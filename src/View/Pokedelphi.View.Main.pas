unit Pokedelphi.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls, System.JSON, PNGimage, Urlmon,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.DBGrids,  Vcl.Buttons, Vcl.OleCtrls, SHDocVw,
  Vcl.Samples.Gauges, ShellAPI, Vcl.ComCtrls, Vcl.WinXCtrls, acImage, acPNG;

type
  TFrmPrincipal = class(TForm)
    RClient: TRESTClient;
    RRequest: TRESTRequest;
    RResponse: TRESTResponse;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Shape2: TShape;
    lbNome: TLabel;
    Panel8: TPanel;
    Shape1: TShape;
    Panel9: TPanel;
    btnBuscar: TPanel;
    Panel11: TPanel;
    edPokemon: TEdit;
    Panel12: TPanel;
    Image2: TImage;
    Panel10: TPanel;
    pnEvents: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    btnMegaX: TPanel;
    btnDefault: TPanel;
    btnMegaY: TPanel;
    Panel17: TPanel;
    Shape3: TShape;
    lbTipo1: TLabel;
    lbTipo2: TLabel;
    Close: TImage;
    ImgPokemon: TsImage;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel15: TPanel;
    Panel13: TPanel;
    Shape5: TShape;
    lbDescricao: TLabel;
    Panel14: TPanel;
    Label6: TLabel;
    Panel18: TPanel;
    Shape4: TShape;
    gaHP: TGauge;
    gaAtk: TGauge;
    gaDef: TGauge;
    gaSpAtk: TGauge;
    gaSpDef: TGauge;
    gaSpeed: TGauge;
    lbHPv: TLabel;
    lbAtkv: TLabel;
    lbDefv: TLabel;
    lbSpAtkv: TLabel;
    lbSpDefv: TLabel;
    lbSpdv: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel19: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    nEvo: TImage;
    Panel25: TPanel;
    nMain: TImage;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    nInfo: TImage;
    nLocation: TImage;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    procedure btnBuscarClick(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnEventsMouseEnter(Sender: TObject);
    procedure pnEventsMouseLeave(Sender: TObject);
    procedure edPokemonKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure MinimizeClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure btnMegaXClick(Sender: TObject);
    procedure btnMegaYClick(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarPokemon();
    procedure OcultaTabs;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Pokedelphi.Controller.Pokedex, Pokedex.Styles.Constants,
  PokeDelphi.Controller.Styles;

{$R *.dfm}

procedure TFrmPrincipal.btnBuscarClick(Sender: TObject);
begin
  BuscarPokemon();
end;

procedure TFrmPrincipal.btnDefaultClick(Sender: TObject);

    function GetPokemonName(Value: string): string;
    begin
      Result := Trim(copy(value, 1, pos(' ', value)));
    end;

begin
  GetMegaIMG(Self, 0);
  RClient.BaseURL := 'https://pokeapi.glitch.me/v1/pokemon/' + GetPokemonName(lbNome.Caption);
  RRequest.Execute();
  lbTipo1.Caption := GetPokemonType(Self, RRequest, GetPokemonName(lbNome.Caption), 1, toDefault);
  lbTipo2.Caption := GetPokemonType(Self, RRequest, GetPokemonName(lbNome.Caption), 2, toDefault);
end;

procedure TFrmPrincipal.btnMegaXClick(Sender: TObject);

    function GetPokemonName(Value: string): string;
    begin
      Result := Trim(copy(value, 1, pos(' ', value)));
    end;

begin
  GetMegaIMG(Self);
  RClient.BaseURL := 'https://pokeapi.glitch.me/v1/pokemon/' + GetPokemonName(lbNome.Caption);
  RRequest.Execute();
  lbTipo1.Caption := GetPokemonType(Self, RRequest, GetPokemonName(lbNome.Caption), 1, toMegaX);
  lbTipo2.Caption := GetPokemonType(Self, RRequest, GetPokemonName(lbNome.Caption), 2, toMegaX);
end;

procedure TFrmPrincipal.btnMegaYClick(Sender: TObject);

    function GetPokemonName(value: string): string;
    begin
      Result := Trim(copy(value, 1, pos(' ', value)));
    end;

begin
  GetMegaIMG(Self, 2);
  RClient.BaseURL := 'https://pokeapi.glitch.me/v1/pokemon/' + GetPokemonName(lbNome.Caption);
  RRequest.Execute();
  lbTipo1.Caption := GetPokemonType(Self, RRequest, edPokemon.Text, 1, toMegaY);
  lbTipo2.Caption := GetPokemonType(Self, RRequest, edPokemon.Text, 2, toMegaY);
end;

procedure TFrmPrincipal.BuscarPokemon;
var
  jsResponse: TJsonObject;
  jsPokemon: TJSONArray;
  sPokemon: String;
begin
  sPokemon := lowercase(edPokemon.Text);
  GetPokemonIMG(Self, RRequest, sPokemon);
  lbTipo1.Caption     := GetPokemonType(Self, RRequest, sPokemon, 1);
  lbTipo2.Caption     := GetPokemonType(Self, RRequest, sPokemon, 2);
  lbDescricao.Caption := GetPokemonDesc(Self, RRequest);

  RClient.BaseURL := 'https://pokeapi.co/api/v2/pokemon/' + sPokemon;
  RRequest.Execute();
  lbNome.Caption  := GetPokemonName(Self, RRequest, sPokemon);
  GetStatus(Self, RRequest, edPokemon.Text);
end;

procedure TFrmPrincipal.CloseClick(Sender: TObject);
begin
  TForm(Self).Close;
end;

procedure TFrmPrincipal.edPokemonKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BuscarPokemon();
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  SetPanelEvents(Self);
  CarregaDadosPikachu();
  OcultaTabs();
end;

procedure TFrmPrincipal.OcultaTabs;
var
   i : integer;
begin
  for i := 0 to PageControl1.PageCount -1 do
  pageControl1.Pages[i].TabVisible := false;
  Pagecontrol1.ActivePage := PageControl1.Pages[0];
end;

procedure TFrmPrincipal.Label3Click(Sender: TObject);
begin
  ShellExecute(0, 'Open', PChar('https://github.com/ryuuzera'), PChar(''), nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.MinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrmPrincipal.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, $F012, 0);
end;

procedure TFrmPrincipal.pnEventsMouseEnter(Sender: TObject);
begin
  SetPanelColorEnter(TPanel(Sender));
end;

procedure TFrmPrincipal.pnEventsMouseLeave(Sender: TObject);
begin
  SetPanelColorLeave(TPanel(Sender));
end;


end.
