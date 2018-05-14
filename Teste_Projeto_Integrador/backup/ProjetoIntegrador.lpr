program ProjetoIntegrador;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uLog, uMain, uMenu, uMesas, uTotal, uDesktop, unit1;
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFRMLog, FRMLog);
  Application.CreateForm(TFRM_Main, FRM_Main);
  Application.CreateForm(TFRMMenu, FRMMenu);
  Application.CreateForm(TFRMMesa, FRMMesa);
  Application.CreateForm(TFRTotal, FRTotal);
  //Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

