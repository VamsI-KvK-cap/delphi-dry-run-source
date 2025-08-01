unit AjustMotif;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, Db, 
     MccADOComp, ADODB, DialogForm, MccCommonComp, uExceptionLog, uDM, CnxInt,
  MccAdvComp, CustomMccADOQuery, MccADOQuery, MccButtonNav, Vcl.DBCtrls,
  CustomSearchCombo, CustomSearchDBCombo, SlotSearchCombo,
  MCF_UI_Dialogs,
  Variants,
  SlotSearchDecl, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup;

const
  CASHDESK    = 0;
  SLOTMACHINE = 1;
  DISPENSER   = 2;

type
  TAjustMotifDlg = class(TMccDialog)
    Drop: TMccADOQuery;
    Sortie: TMccADOQuery;
    DefaultMccButNav: TMccButtonNav;
    CancelBtn: TBitBtn;
    OKBtn: TBitBtn;
    QrySlotList: TMccADOQuery;
    DSSlotList: TDataSource;
    QrDispenser: TMccADOQuery;
    DsQrDispenser: TDataSource;
    QrCashdesk: TMccADOQuery;
    DsQrCashdesk: TDataSource;
    AjustType: TcxRadioGroup;
    PnlTransact: TPanel;
    RdgAffect: TRadioGroup;
    CmbSlot: TSlotSearchCombo;
    CmbTerm: TDBLookupComboBox;
    CmbCashdesk: TDBLookupComboBox;
    PnlAjust: TPanel;
    Label1: TLabel;
    RGSortie: TRadioGroup;
    RGDrop: TRadioGroup;
    Edit1: TMccAdvEdit;
    QrCashier: TMccADOQuery;
    procedure FormShow(Sender: TObject);
    procedure RGSortieClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RdgAffectClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure MccCustomDialogCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AjustTypeClick(Sender: TObject);

  private
    FCashType: integer;
    FAmount: real;
    FCashSource: string;
    FCodeCaisse: string;
    FIsOk: boolean;
    FIsAdmin: boolean;
    FMccCnx: TCnxName;
    FIsTransaction: boolean;
    FShowTransaction: boolean;
    { Déclarations privées }
    function ValuesAreValid : boolean;
    procedure SetAdminMode;
    procedure SetAjustType;
  public
    { Déclarations publiques }
    Sens: integer;
    TDropID: array of Integer;
    TDropMotif: array of string;
    TSortieID: array of Integer;
    TSortieMotif: array of string;
    FCanClose : boolean;
    property IsAdmin: boolean read FIsAdmin write FIsAdmin default false;
    property IsTransaction: boolean read FIsTransaction write FIsTransaction default false;
    property ShowTransaction: boolean read FShowTransaction write FShowTransaction default true;
    property IsOk: boolean read FIsOk write FIsOk;
    property Amount: real read FAmount write FAmount;
    property CodeCaisse: string read FCodeCaisse write FCodeCaisse;
    property CashType: integer read FCashType write FCashType;
    property CashSource: string read FCashSource write FCashSource;
    property MccCnx: TCnxName read FMccCnx write FMccCnx;
  end;

var
  AjustMotifDlg: TAjustMotifDlg;

implementation

{$R *.DFM}

resourcestring
  rcConfirmation = 'Voulez vous valider la saisie effectuée ?';
  rcCashdeskIsNotValid = 'La saisie de la caisse est obligatoire!';
  rcSlotIsNotValid = 'La saisie de la machine est obligatoire!';
  rcAdjustement = 'Ajustement';
  rcTransaction = 'Transaction';

procedure TAjustMotifDlg.FormShow(Sender: TObject);
begin
  try
    begin
      TLog.GetInstance.LogMessage(msgInfo, self, 'FormShow', 'Execution of FormShow', false);

      Drop.Open;
      SetLength(TDropID, Drop.RecordCount);
      SetLength(TDropMotif, Drop.RecordCount);
      Sortie.Open;
      SetLength(TSortieID, Sortie.RecordCount);
      SetLength(TSortieMotif, Sortie.RecordCount);

      var i := 0;

      while not Drop.eof do
      begin
        TDropID[i] := Drop.FieldByName('ajust_id').AsInteger;
        TDropMotif[i] := Drop.FieldByName('motif').AsString;
        Drop.Next;
        inc(i);
      end;

      i := 0;

      while not Sortie.eof do
      begin
        TSortieID[i] := Sortie.FieldByName('ajust_id').AsInteger;
        TSortieMotif[i] := Sortie.FieldByName('motif').AsString;
        Sortie.Next;
        inc(i);
      end;

      for i := 0 to Drop.RecordCount - 1 do
        RGDrop.Items.Add(TDropMotif[i]);

      for i := 0 to Sortie.RecordCount - 1 do
        RGSortie.Items.Add(TSortieMotif[i]);

      RGDrop.Visible := Sens in [0, 2];
      RGSortie.Visible := (not RGDrop.Visible);
      RGDrop.ItemIndex := -1;
      RGSortie.ItemIndex := -1;
      OKBtn.Enabled := False;
      Edit1.Text := '';

      SetAjustType;

    end;
  except
    on E: Exception do
      TLog.GetInstance.LogError(msgCritical, self, 'FormShow', E, true);
  end;
end;

procedure TAjustMotifDlg.MccCustomDialogCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    if FIsAdmin
    and FIsTransaction
    and (ModalResult = mrok) then
      CanClose := FCanClose;
end;

procedure TAjustMotifDlg.OKBtnClick(Sender: TObject);
begin
  inherited;

  if FIsAdmin
  and FIsTransaction then
  begin
    FIsOk := false;
    FCanClose := ValuesAreValid;

    if FCanClose then
    begin
      if LogMessageDlg(rcConfirmation, mtConfirmation, [mbOk, mbCancel], 0, Self, 'OKBtnClick') = mrOk then
      begin
        FCashType := RdgAffect.ItemIndex;
        case FCashType of
          CASHDESK    : FCashSource := CmbCashdesk.KeyValue;
          SLOTMACHINE : FCashSource := CmbSlot.KeyValue;
          DISPENSER   : FCashSource := QrDispenser.FieldByName('CodeCaisse').AsString;
        end;

        FIsOk := true;
      end;
    end;
  end;
end;

procedure TAjustMotifDlg.RdgAffectClick(Sender: TObject);
begin
  inherited;
  CmbCashdesk.Visible := RdgAffect.ItemIndex = CASHDESK;
  CmbSlot.Visible := RdgAffect.ItemIndex = SLOTMACHINE;
  CmbTerm.Visible := RdgAffect.ItemIndex = DISPENSER;
end;

procedure TAjustMotifDlg.RGSortieClick(Sender: TObject);
begin
  try
    begin
      TLog.GetInstance.LogMessage(msgInfo, self, 'RGSortieClick', 'Execution of RGSortieClick', false);

      OKBtn.Enabled := True;
    end;
  except
    on E: Exception do
      TLog.GetInstance.LogError(msgCritical, self, 'RGSortieClick', E, true);
  end;
end;

procedure TAjustMotifDlg.SetAdminMode;
const
  CS_Cashdesk_SELECT_Vault =
    'SELECT'#13 +
    '  CodeCaisse, Libelle'#13 +
    'FROM'#13 +
    '  TypeCais WITH (NOLOCK)'#13 +
    'WHERE'#13 +
    '  Type = 1 AND Hide = 0';
  CS_Cashdesk_SELECT_VaultANDCashdesk =
    'SELECT'#13 +
    '  CodeCaisse, Libelle'#13 +
    'FROM'#13 +
    '  TypeCais WITH (NOLOCK)'#13 +
    'WHERE'#13 +
    '  (Type = 1 OR Type = 0) AND Hide = 0';

begin
  QrDispenser.MccDefaultCnx := FMccCnx;
  QrCashdesk.MccDefaultCnx := FMccCnx;

  if FMccCnx = mcJeux then
    CmbSlot.SlotSearchFilter.ChangeFilterValue(ssvAutomatedLiveGameType, [algttLiveSatellite,algtLiveMainALG]);

  QrDispenser.Close;
  QrDispenser.Open;
  QrCashdesk.Close; // Close it here
  QrCashdesk.SQL.Text := CS_Cashdesk_SELECT_Vault;

  if not QrDispenser.IsEmpty then
  begin
    QrDispenser.First;
    CmbTerm.KeyValue := QrDispenser.FieldByName('CodeCaisse').AsString;
  end
  else
  begin
    RdgAffect.Items.Delete(DISPENSER);
    if FMccCnx = mcJeux then
    begin
      RdgAffect.Items.Delete(SLOTMACHINE);
      CmbCashdesk.Top := 147;
      QrCashdesk.SQL.Text := CS_Cashdesk_SELECT_VaultANDCashdesk;
    end
    else
    begin
      CmbCashdesk.Top := 81;
      CmbSlot.Top := 216;
    end;
  end;

  QrCashdesk.Open; // Open it here, after assigning SELECT
end;

procedure TAjustMotifDlg.SetAjustType;
begin
  AjustType.Properties.Items.Add.Caption := rcAdjustement;
  AjustType.Properties.Items[0].Tag := 0;
  AjustType.ItemIndex := 0;

  if FIsAdmin and ShowTransaction and (Sens in [0, 1]) then
  begin
    AjustType.Properties.Items.Add.Caption := rcTransaction;
    AjustType.Properties.Items[1].Tag := 1;

    SetAdminMode;
  end;
end;

procedure TAjustMotifDlg.AjustTypeClick(Sender: TObject);
begin
  inherited;
  case AjustType.Properties.Items[AjustType.ItemIndex].Tag of
    0 : begin
          PnlAjust.Visible := true;
          PnlTransact.Visible := false;
          FIsTransaction := false;
          OKBtn.Enabled :=
              (RGDrop.Visible and (RGDrop.Items.Count = 0)) or
              (RGSortie.Visible and (RGSortie.Items.Count = 0));
        end;
    1 : begin
          PnlAjust.Visible := false;
          PnlTransact.Visible := Sens in [0,2];
          FIsTransaction := true;
          OKBtn.Enabled := True;
        end;
  end;
end;

procedure TAjustMotifDlg.FormDestroy(Sender: TObject);
begin
  try
    begin
      TLog.GetInstance.LogMessage(msgInfo, self, 'FormDestroy', 'Execution of FormDestroy', false);

      SetLength(TDropID, 0);
      SetLength(TDropMotif, 0);
      SetLength(TSortieID, 0);
      SetLength(TSortieMotif, 0);
      TDropID := nil;
      TDropMotif := nil;
      TSortieID := nil;
      TSortieMotif := nil;
    end;
  except
    on E: Exception do
      TLog.GetInstance.LogError(msgCritical, self, 'FormDestroy', E, true);
  end;
end;

function TAjustMotifDlg.ValuesAreValid: boolean;
begin
  result := false;

  var CashDeskIsValid := true;
  var SlotMachineIsValid := true;
  try
    if Sens in [0, 2] then
    begin
      case RdgAffect.ItemIndex of
        CASHDESK :
          begin
            CashDeskIsValid := CmbCashdesk.KeyValue<>null;
            if not CashDeskIsValid then
            begin
              LogMessageDlg(rcCashdeskIsNotValid, mtError, [mbOk], 0, Self, 'ValuesAreValid');
              if CmbCashdesk.CanFocus then
                CmbCashdesk.SetFocus;
            end;
          end;
        SLOTMACHINE :
          begin
            SlotMachineIsValid := CmbSlot.KeyValue<>null;
            if not SlotMachineIsValid then
            begin
              LogMessageDlg(rcSlotIsNotValid, mtError, [mbOk], 0, Self, 'ValuesAreValid');
              if CmbSlot.CanFocus then
                CmbSlot.SetFocus;
            end;
          end;
      end;
    end;

    result := CashDeskIsValid and SlotMachineIsValid;
  except
    on E: Exception do
      TLog.GetInstance.LogError(msgCritical, self, 'ValuesAreValid', E, true);
  end;
end;
end.
