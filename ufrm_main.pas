unit ufrm_main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  //
  UISubstitui,
  USubstitui,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfrm_main = class( TForm )
    EdStr: TLabeledEdit;
    EdResultado: TLabeledEdit;
    EdVelho: TLabeledEdit;
    EdNovo: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    procedure FormCreate( Sender: TObject );
    procedure FormDestroy( Sender: TObject );
    procedure SpeedButton1Click( Sender: TObject );
  private
    { Private declarations }
    Subst: TSubstitui;
  public
    { Public declarations }
    procedure Substituir;
  end;

var
  Frm_main: Tfrm_main;

implementation

{$R *.dfm}


procedure Tfrm_main.FormCreate( Sender: TObject );
begin
  Subst := TSubstitui.Create;
end;

procedure Tfrm_main.FormDestroy( Sender: TObject );
begin
  if Assigned( Subst ) then
    Subst.Destroy;
end;

procedure Tfrm_main.SpeedButton1Click( Sender: TObject );
begin
  Self.Substituir;
end;

procedure Tfrm_main.Substituir;
begin
  EdResultado.Text := Subst.Substituir( EdStr.Text, EdVelho.Text, EdNovo.Text );
end;

end.
