unit uTotal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TFRTotal }

  TFRTotal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  FRTotal: TFRTotal;

implementation

{$R *.lfm}

{ TFRTotal }

procedure TFRTotal.Button1Click(Sender: TObject);
var
  Nome : String;
  Preco : Double;

begin
   if (RadioGroup1.ItemIndex=0 = True)then
   begin
     ListBox2.Items.Add('Prato do dia 1');
     ListBox1.Items.Add('10.00');
   end
   else if (RadioGroup1.ItemIndex=0 = True)then
   begin
     ListBox2.Items.Add('Prato do dia 2');
     ListBox1.Items.Add('12.00');
   end
   else if (RadioGroup1.ItemIndex=0 = True)then
   begin
     ListBox2.Items.Add('Prato do dia 3');
     ListBox1.Items.Add('15.00');
   end

   else if (RadioGroup1.ItemIndex =0 = False) and (RadioGroup1.ItemIndex =1 =
   False)and (RadioGroup1.ItemIndex =2 = False) then
   begin


  Preco:= StrToFloat(Edit2.Text);

  Edit2.Text := FloatToStr(Preco);


   ListBox1.Items.Add(Edit2.Text );
   ListBox2.Items.Add(Edit1.Text );
   end;


end;

procedure TFRTotal.Button2Click(Sender: TObject);
var
  Calculo : Double;
  I : integer ;

begin
   for I := 0 to ListBox1.Items.Count - 1 do
            Calculo :=   Calculo + StrToCurr(ListBox1.Items[I]);
          Edit3.text := FormatCurr('R$ 0.00',  Calculo);
          ListBox3.Items.Add(Edit3.Text);
          Edit3.Clear;
          ListBox1.Clear;
          ListBox2.Clear;

end;

end.

