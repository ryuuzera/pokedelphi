unit Pokedelphi.Controller.Pokedex;

interface

uses
  REST.Client, System.JSON, UrlMon;
type
  TVariants = (toMegaX, toMegaY, toDefault);

function GetPokemonIMG(Sender: TObject; ARequest: TRestRequest; Pokemon: String): string;
function GetPokemonDesc(Sender: TObject; ARequest: TRestRequest): String;
function GetPokemonName(Sender: TObject; ARequest: TRestRequest; Pokemon: String): string;
function GetPokemonType(Sender: TObject; ARequest: TRestRequest; Pokemon: String; Qual: Integer; Variant: TVariants = toDefault): String;
procedure GetStatus(Sender: TObject; ARequest: TRestRequest; Pokemon: String);
procedure GetMegaIMG(Sender: TObject; Qual: Integer = 1);
procedure CarregaDadosPikachu();
function FormataNome(Nome: String): String;

type
  TMegaEvo = class
    private
      class var FMegaX: String;
      class var FMegaY: String;
      class var FDefault: String;
    public
      class property MegaXUrl: string read FMegaX write FMegaX;
      class property MegaYUrl: string read FMegaY write FMegaY;
      class property DefaultUrl: string read FDefault write FDefault;
  end;

implementation

uses
  Vcl.Forms, System.SysUtils,
  System.Generics.Collections, Pokedelphi.View.Main,
  System.Types, Vcl.Samples.Gauges, Winapi.Windows, Winapi.Messages,
  System.Classes, Vcl.ExtCtrls, Vcl.Controls,
  Pokedex.Styles.Constants, Vcl.Graphics, Vcl.Dialogs,
  Pokedelphi.Controller.Download;

function FormataNome(Nome: String): String;
var
  Tamanho, J: Integer;
  I: Byte;
begin
  Result := AnsiLowerCase(Nome);
  Tamanho := Length(Result);

  for J := 1 to Tamanho do
  begin
    if (J = 1) or ((J > 1) and (Result[J - 1] = Chr(32))) then
      Result[J] := AnsiUpperCase(Result[J])[1];
  end;
end;

function GetPokemonIMG(Sender: TObject; ARequest: TRestRequest; Pokemon: String): String;
var
  jsResponse: TJSONObject;
  jsPokemon: TJSONArray;
  Url: String;
  TemMega: Boolean;

    procedure SetEventosMega(AForm: TForm; Modo: Boolean; Qtd: Integer);
    var
      i,
      index: Integer;
    begin
      if Modo then
      begin
        for i := 0 to Pred(AForm.ComponentCount) do
        begin
          if (Aform.Components[I].Tag = 25) then
          begin
            Index := I;
            break
          end;
        end;
        TPanel(AForm.FindComponent('btnMegaX')).OnMouseEnter   := TPanel(Aform.Components[Index]).OnMouseEnter;
        TPanel(AForm.FindComponent('btnDefault')).OnMouseEnter := TPanel(Aform.Components[Index]).OnMouseEnter;
        TPanel(AForm.FindComponent('btnMegaX')).OnMouseLeave   := TPanel(Aform.Components[Index]).OnMouseLeave;
        TPanel(AForm.FindComponent('btnDefault')).OnMouseLeave := TPanel(Aform.Components[Index]).OnMouseLeave;
        TPanel(AForm.FindComponent('btnMegaX')).Cursor         := crHandPoint;
        TPanel(AForm.FindComponent('btnDefault')).Cursor       := crHandPoint;
        TPanel(AForm.FindComponent('btnMegaX')).Color          := BUTTON_COLOR;
        TPanel(AForm.FindComponent('btnDefault')).Color        := BUTTON_COLOR;
        TPanel(AForm.FindComponent('btnMegaX')).Font.Color     := clWhite;
        TPanel(AForm.FindComponent('btnDefault')).Font.Color   := clWhite;
        if Qtd > 2 then
        begin
          TPanel(AForm.FindComponent('btnMegaY')).OnMouseEnter   := TPanel(Aform.Components[Index]).OnMouseEnter;
          TPanel(AForm.FindComponent('btnMegaY')).OnMouseLeave   := TPanel(Aform.Components[Index]).OnMouseLeave;
          TPanel(AForm.FindComponent('btnMegaY')).Cursor         := crHandPoint;
          TPanel(AForm.FindComponent('btnMegaY')).Color          := BUTTON_COLOR;
          TPanel(AForm.FindComponent('btnMegaY')).Font.Color     := clWhite;
        end
        else
        begin
          TPanel(AForm.FindComponent('btnMegaY')).OnMouseEnter   := nil;
          TPanel(AForm.FindComponent('btnMegaY')).OnMouseLeave   := nil;
          TPanel(AForm.FindComponent('btnMegaY')).Cursor         := crDefault;
          TPanel(AForm.FindComponent('btnMegaY')).Color          := BUTTON_COLOR_DISABLE;
          TPanel(AForm.FindComponent('btnMegaY')).Font.Color     := FONT_COLOR_DISABLE;
        end;
      end
      else
      begin
        TPanel(AForm.FindComponent('btnMegaX')).OnMouseEnter   := nil;
        TPanel(AForm.FindComponent('btnMegaY')).OnMouseEnter   := nil;
        TPanel(AForm.FindComponent('btnDefault')).OnMouseEnter := nil;

        TPanel(AForm.FindComponent('btnMegaX')).OnMouseLeave   := nil;
        TPanel(AForm.FindComponent('btnMegaY')).OnMouseLeave   := nil;
        TPanel(AForm.FindComponent('btnDefault')).OnMouseLeave := nil;

        TPanel(AForm.FindComponent('btnMegaX')).Cursor         := crDefault;
        TPanel(AForm.FindComponent('btnMegaY')).Cursor         := crDefault;
        TPanel(AForm.FindComponent('btnDefault')).Cursor       := crDefault;

        TPanel(AForm.FindComponent('btnMegaX')).Color          := BUTTON_COLOR_DISABLE;
        TPanel(AForm.FindComponent('btnMegaY')).Color          := BUTTON_COLOR_DISABLE;
        TPanel(AForm.FindComponent('btnDefault')).Color        := BUTTON_COLOR_DISABLE;

        TPanel(AForm.FindComponent('btnMegaX')).Font.Color     := FONT_COLOR_DISABLE;
        TPanel(AForm.FindComponent('btnMegaY')).Font.Color     := FONT_COLOR_DISABLE;
        TPanel(AForm.FindComponent('btnDefault')).Font.Color   := FONT_COLOR_DISABLE;
      end;
    end;

begin
  ARequest.Client.BaseURL := 'https://pokeapi.glitch.me/v1/pokemon/' + Pokemon;
  ARequest.Execute;

  if not(ARequest.Response.StatusCode in [200, 201]) then
  begin
    MessageDlg('Pokémon não encontrado!', mtInformation, [mbOK], 0);
    Abort;
  end;

  jsPokemon := ARequest.Response.JSONValue as TJSONArray;
  Url := jsPokemon.Get(0).GetValue<String>('sprite');
  DownloadImg(Url);
  SetPokemonIMG(TImage(TForm(Sender).FindComponent('ImgPokemon')));
  TemMega := (jsPokemon.Count > 1);
  if TemMega then
  begin
    TMegaEvo.FDefault := Url;
    TMegaEvo.MegaXUrl := jsPokemon.Get(1).GetValue<String>('sprite');
    if jsPokemon.Count > 2 then
      TMegaEvo.MegaYUrl := jsPokemon.Get(2).GetValue<String>('sprite')
    else
      TMegaEvo.MegaYUrl := '';
  end
  else
    TMegaEvo.MegaXUrl := '';

  TPanel(TForm(Sender).FindComponent('btnMegaX')).Enabled   := (jsPokemon.Count > 1);
  TPanel(TForm(Sender).FindComponent('btnMegaY')).Enabled   := (jsPokemon.Count > 2);
  TPanel(TForm(Sender).FindComponent('btnDefault')).Enabled := (jsPokemon.Count > 1);
  SetEventosMega(TForm(Sender), TemMega, jsPokemon.Count);
end;

procedure GetMegaIMG(Sender: TObject; Qual: Integer = 1);
var
  LSucess: boolean;
begin
  if Qual = 1 then
    LSucess := DownloadImg(TMegaEvo.FMegaX)
  else if Qual = 2 then
    LSucess := DownloadImg(TMegaEvo.FMegaY)
  else
    LSucess := DownloadImg(TMegaEvo.FDefault);
  if LSucess then
    SetPokemonIMG(TImage(TForm(Sender).FindComponent('ImgPokemon')));
end;

function GetPokemonName(Sender: TObject; ARequest: TRestRequest; Pokemon: String): string;
var
  jsResponse: TJSONObject;
  jsPokemon: TJSONArray;
  sNome,
  sID: String;
begin
  jsResponse := ARequest.Response.JSONValue as TJSONObject;
  sNome := jsResponse.GetValue<String>('name');
  sID   := jsResponse.GetValue<String>('id');
  Result := FormataNome(sNome) + '  #' + sID;
end;

function GetPokemonDesc(Sender: TObject; ARequest: TRestRequest): String;
var
  jsResponse: TJSONObject;
  jsPokemon: TJSONArray;
  sDesc: string;
begin
  jsPokemon  := ARequest.Response.JSONValue as TJSONArray;
  jsResponse := (jsPokemon as TJSONArray).Get(0) as TJSONObject;
  Result     := jsResponse.GetValue<String>('description');
end;

function GetPokemonType(Sender: TObject; ARequest: TRestRequest; Pokemon: String; Qual: Integer; Variant: TVariants = toDefault): String;
var
  jsResponse: TJSONObject;
  jsPokemon, jsTypes: TJSONArray;
  sTypes: string;
begin
  jsPokemon := ARequest.Response.JSONValue as TJSONArray;

  if Variant in [toDefault] then
    sTypes := (jsPokemon as TJsonArray).Get(0).ToJSON
  else if Variant in [toMegaX] then
    sTypes := (jsPokemon as TJsonArray).Get(1).ToJSON
  else if Variant in [toMegaY] then
      sTypes := (jsPokemon as TJsonArray).Get(2).ToJSON;

  jsResponse := TJSONObject.ParseJSONValue(sTypes) as TJSONObject;
  jsTypes := jsResponse.Get('types').JsonValue as TJSONArray;
  Result := '';
  case Qual of
    1:
    begin
      sTypes  := jsTypes.Get(0).Value;
      Result  := FormataNome(sTypes);
    end;
    2:
    begin
      if jsTypes.Count > 1 then
      begin
        sTypes  := jsTypes.Get(1).Value;
        Result  := FormataNome(sTypes);
      end
    end;
  end;

end;


procedure GetStatus(Sender: TObject; ARequest: TRestRequest; Pokemon: String);
var
  jsResponse: TJSONObject;
  jsPokemon, jsStats: TJSONArray;
  sTypeName, sTypeBase: TArray<String>;
  sNome: String;
  I, J: Integer;

begin
  ARequest.Client.BaseURL := 'https://pokeapi.co/api/v2/pokemon/' + Pokemon;
  ARequest.Execute();
  if not (ARequest.Response.StatusCode in [200, 201]) then
    Abort;
  jsResponse := ARequest.Response.JSONValue as TJSONObject;
  sNome := jsResponse.GetValue<String>('name');
  jsStats    := jsResponse.Get('stats').JsonValue as TJSONArray;
  SetLength(sTypeName, jsStats.Count);
  SetLength(sTypeBase, jsStats.Count);

  for I := 0 to Pred(jsStats.Count) do
  begin
    sTypeName[I] := jsStats.Items[I].GetValue<String>('stat.name');
    sTypeBase[I] := jsStats.Items[I].GetValue<string>('base_stat');
  end;
  for I := 0 to High(sTypeName) do
  begin
    with FrmPrincipal do
    begin
      if (AnsiSameText(sTypeName[I], 'hp')) then
      begin
        lbHpv.Caption := sTypeBase[I];
        gaHP.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaHP.Progress := gaHP.Progress + 1;
        end;
      end
      else if (AnsiSameText(sTypeName[I], 'attack')) then
      begin
        lbAtkv.Caption := sTypeBase[I];
        gaAtk.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaAtk.Progress := gaAtk.Progress + 1;
        end;
      end
      else if (AnsiSameText(sTypeName[I], 'defense')) then
      begin
        lbDefv.Caption := sTypeBase[I];
        gaDef.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaDef.Progress := gaDef.Progress + 1;
        end;
      end
      else if (AnsiSameText(sTypeName[I], 'special-attack')) then
      begin
        lbSpAtkv.Caption := sTypeBase[I];
        gaSpAtk.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaSpAtk.Progress := gaSpAtk.Progress + 1;
        end;
      end
      else if (AnsiSameText(sTypeName[I], 'special-defense')) then
      begin
        lbSpDefv.Caption := sTypeBase[I];
        gaSpDef.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaSpDef.Progress := gaSpDef.Progress + 1;
        end;
      end
      else if (AnsiSameText(sTypeName[I], 'speed')) then
      begin
        lbSpdv.Caption := sTypeBase[I];
        gaSpeed.Progress := 0;
        for J := 0 to sTypeBase[I].ToInteger do
        begin
          gaSpeed.Progress := gaSpeed.Progress + 1;
        end;
      end;
    end;
  end;

end;

procedure CarregaDadosPikachu();
begin
  with FrmPrincipal do
  begin
    gaHP.Progress    := 35;
    lbHPv.Caption    := Integer(35).ToString;
    gaAtk.Progress   := 55;
    lbAtkv.Caption   := Integer(55).ToString;
    gaDef.Progress   := 40;
    lbDefv.Caption   := Integer(40).ToString;
    gaSpAtk.Progress := 50;
    lbSpAtkv.Caption := Integer(50).ToString;
    gaSpDef.Progress := 50;
    lbSpDefv.Caption := Integer(50).ToString;
    gaSpeed.Progress := 90;
    lbSpdv.Caption   := Integer(90).ToString;
  end;
end;

end.
