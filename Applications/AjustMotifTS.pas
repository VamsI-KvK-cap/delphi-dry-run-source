unit AjustMotifTS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AjustMotif, DB, ADODB, MccADOComp, StdCtrls, Buttons, ExtCtrls,
  MccCommonComp, uExceptionLog, uDM, CnxInt, MccAdvComp;

type
  TAjustMTS = class(TAjustMotifDlg)
    procedure MccCustomDialogActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    IsTouchScreen : Smallint;
    destructor Destroy; override;
  end;

var
  AjustMTS: TAjustMTS;

implementation

{$R *.dfm}

destructor TAjustMTS.Destroy;
begin
  try
    begin
      TLog.GetInstance.LogMessage(msgInfo, self, 'Destroy', 'Execution of Destroy', false);

      inherited;
    end;
  except
    on E: Exception do
    begin
      TLog.GetInstance.LogError(msgCritical, self, 'Destroy', E, false);

      raise;
    end;
  end;
end;

procedure TAjustMTS.MccCustomDialogActivate(Sender: TObject);
begin
  inherited;
  try
    begin
      TLog.GetInstance.LogMessage(msgInfo, self, 'FormActivate', 'Execution of FormActivate', false);

      inherited;

      if IsTouchScreen = 2 then
        SetForceVirtualKeyboard(False)
      else if IsTouchScreen = 1 then
        SetForceVirtualKeyboard(True);
    end;
  except
    on E: Exception do
    begin
      TLog.GetInstance.LogError(msgCritical, self, 'FormActivate', E, false);

      raise;
    end;
  end;
end;

procedure TAjustMTS.FormShow(Sender: TObject);
begin
  inherited;
  try
    TLog.GetInstance.LogMessage(msgInfo, nil, 'FormShow','Execution of FormShow', false);
  except
    on E: Exception do
      TLog.GetInstance.LogError(msgCritical, nil, 'FormShow', E, false);
  end;
end;

end.
