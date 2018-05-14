unit uNovoCliente;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls;

type

  { TFRM_novoLiente }

  TFRM_novoLiente = class(TForm)
    BT_OK: TButton;
    ED_CPF: TEdit;
    ED_Nome: TEdit;
    ED_SobreNome: TEdit;
    ED_Telefone: TEdit;
    LBTelefone: TListBox;
    LB_nome: TLabel;
    LB_nome1: TLabel;
    LB_nome2: TLabel;
    LB_nome3: TLabel;
    LBNome: TListBox;
    LBCPF: TListBox;
    LBCNPJ: TListBox;
    LB_nome4: TLabel;
    LB_nome5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    RAD_CADASTRO: TRadioGroup;
    procedure BT_OKClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RAD_CADASTROClick(Sender: TObject);
  private

  public

  end;

var
  FRM_novoLiente: TFRM_novoLiente;

implementation

{$R *.lfm}

{ TFRM_novoLiente }

procedure TFRM_novoLiente.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0 = True) then
  begin

    ED_Nome.Enabled := True;
    ED_SobreNome.Enabled:=False;

    ED_Telefone.Enabled:=True;

  end
 else if (RadioGroup1.ItemIndex = 1 = True)then
  begin
    ED_Nome.Enabled := True;
    ED_SobreNome.Enabled:= True;
    ED_Telefone.Enabled:=True;




  end

end;

procedure TFRM_novoLiente.RAD_CADASTROClick(Sender: TObject);
begin
  if (RAD_CADASTRO.ItemIndex = 0 = True) then
  begin
    ED_CPF.Enabled:= True;
  end
  else if(RAD_CADASTRO.ItemIndex = 1 = True)then
  begin
      ED_CPF.Enabled:=True;
  end;

end;

procedure TFRM_novoLiente.BT_OKClick(Sender: TObject);
begin
  if (RAD_CADASTRO.ItemIndex=0 = True) and (RadioGroup1.ItemIndex=1 = True) then
  Begin
       LBNome.Items.Add('Nome: ' + ED_Nome.Text + ' '+ED_SobreNome.Text);
       LBCPF.Items.Add(ED_CPF.Text);
       LBCNPJ.Items.Add('----');
       LBTelefone.Items.Add(ED_Telefone.Text);


  end
  else if (RAD_CADASTRO.ItemIndex=1 = True)and (RadioGroup1.ItemIndex=0 = true)then
  begin
       LBNome.Items.Add('Empresa: '+ ED_Nome.Text);
       LBCNPJ.Items.Add(ED_CPF.Text);
       LBTelefone.Items.Add(ED_Telefone.Text);

  end;
end;

end.

