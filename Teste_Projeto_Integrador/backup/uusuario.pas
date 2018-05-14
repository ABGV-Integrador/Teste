unit uUsuario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TFRMUser }

  TFRMUser = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    LB_Entrega: TListBox;
    LB_Prato: TListBox;
    LB_pagamento: TListBox;
    LB_forma: TListBox;
    FRM_Forma: TRadioGroup;
    FRM_Suco: TRadioGroup;
    LB_Total: TListBox;
    RDO_Menu: TRadioGroup;
    FRM_Pagamento: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  FRMUser: TFRMUser;

implementation

{$R *.lfm}

{ TFRMUser }

procedure TFRMUser.Button1Click(Sender: TObject);
begin

  if (RDO_Menu.ItemIndex = 0 = True) then
  begin
    LB_Prato.Items.Add('Prato do dia 1');
    LB_pagamento.Items.Add('10.00');
  end

  else if (RDO_Menu.ItemIndex = 1 = True) then
  begin
    LB_Prato.Items.Add('Prato do dia 2');
    LB_pagamento.Items.Add('12.00');
  end

  else if (RDO_Menu.ItemIndex = 2 = True) then
  begin
    LB_Prato.Items.Add('Prato do dia 3');
    LB_pagamento.Items.Add('15.00');
  end

  else if (RDO_Menu.ItemIndex = 3 = True) then
  begin
    LB_Prato.Items.Add('Prato do dia 2');
    LB_pagamento.Items.Add('12.00');
  end

  else if (RDO_Menu.ItemIndex = 4 = True) then
  begin
    LB_Prato.Items.Add('Prato do dia 3');
    LB_pagamento.Items.Add('15.00');

  end
  else if (RDO_Menu.ItemIndex =5 = True)Then
  begin

  end;




  if (FRM_Pagamento.ItemIndex = 0 = True) then
  begin
    LB_forma.Items.Add('Dinheiro');
  end

  else if (FRM_Pagamento.ItemIndex = 1 = True) then
  begin
    LB_forma.Items.Add('Cartao');
  end;

  if ( FRM_Suco.ItemIndex= 0 = True) then
  begin
    LB_Prato.Items.Add('Coca');
    LB_pagamento.Items.Add('5.50');

  end
  else if (FRM_Suco.ItemIndex=1 = True) then
  begin
       LB_Prato.Items.Add('Fanta');
       LB_pagamento.Items.Add('4.50');

  end


else if (FRM_Suco.ItemIndex=2 = True) then
    begin
      LB_Prato.Items.Add('Suco natural');
      LB_pagamento.Items.Add('4.50');
    end;


 if (FRM_Forma.ItemIndex=0 = True)then
    begin
      LB_Entrega.Items.Add('Entrega');
    end
 else if (FRM_Forma.ItemIndex=1 = True)then
    begin
      LB_Entrega.Items.Add('consumo');
    end;
  end;

procedure TFRMUser.Button2Click(Sender: TObject);
var
  conta : Double;
  I : integer;
begin
 for I:= 0  to LB_pagamento.Items.Count -1 do
     conta:=conta + StrToCurr(LB_pagamento.Items[I]) ;
     Edit1.Text:= FormatCurr('R$00.00',conta);
     LB_Total.Items.Add(Edit1.Text) ;
     Edit1.Clear;

end;




end.


