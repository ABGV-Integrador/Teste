unit uLog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, uMain, uNovoCliente,uUsuario;

type

  { TFRMLog }

  TFRMLog = class(TForm)
    BT_OK: TButton;
    Button1: TButton;
    ED_Log: TEdit;
    ED_Senha: TEdit;
    procedure BT_OKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ED_LogChange(Sender: TObject);
  private

  public

  end;

var
  FRMLog: TFRMLog;

implementation

{$R *.lfm}

{ TFRMLog }

procedure TFRMLog.BT_OKClick(Sender: TObject);
begin
  if (ED_Log.Text = 'admin') and (ED_Senha.Text = 'admin') then
  begin
    FRM_Main.ShowModal;
    FRMLog.Close;

  end
  else if (ED_Log.Text = 'user') and (ED_Senha.Text = 'user') then
  begin
  FRMUser.showModal;

  end;

end;

procedure TFRMLog.Button1Click(Sender: TObject);
begin
  FRM_novoLiente.ShowModal;
end;

procedure TFRMLog.ED_LogChange(Sender: TObject);
begin
end;

end.

