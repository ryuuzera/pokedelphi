unit Pokedelphi.Controller.Download;

interface

uses
  UrlMon, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

function DownloadImg(Url: String): Boolean;
procedure SetPokemonIMG(AImage: TImage);

implementation

uses
  System.SysUtils;

function DownloadImg(Url: String): Boolean;
var
  PokemonIMG: String;
begin
  PokemonIMG := GetEnvironmentVariable('TEMP') + '\pokemon-img.png';
  Result := UrlDownloadToFile(nil, PChar(Url), PChar(PokemonIMG), 0, nil) = 0;
end;

procedure SetPokemonIMG(AImage: TImage);
var
  PokemonIMG: String;
begin
  PokemonIMG := GetEnvironmentVariable('TEMP') + '\pokemon-img.png';
  try
    AImage.Picture.LoadFromFile(PokemonIMG);
  finally
    if Assigned(AImage) then
      DeleteFile(PokemonIMG);
  end;
end;


end.
