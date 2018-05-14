unit uMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, uMesas, uMenu, uTotal;

type

  { TFRM_Main }

  TFRM_Main = class(TForm)
    Button1: TButton;
    LB_Total: TLabel;
    LBTotal: TListBox;
    MainMenu1: TMainMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  FRM_Main: TFRM_Main;

implementation

{$R *.lfm}

{ TFRM_Main }

procedure TFRM_Main.MenuItem3Click(Sender: TObject);
begin
  FRMMesa.ShowModal;

end;

procedure TFRM_Main.FormCreate(Sender: TObject);
begin

end;

procedure TFRM_Main.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TFRM_Main.Button1Click(Sender: TObject);
begin
  //LBTotal.Items.Add(FRTotal.ListBox3.Items);
end;

procedure TFRM_Main.MenuItem2Click(Sender: TObject);
begin
  FRMMenu.ShowModal;
end;

procedure TFRM_Main.MenuItem4Click(Sender: TObject);
begin
  FRTotal.Show;
end;

end.

