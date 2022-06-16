program Pokedelphi;

uses
  Vcl.Forms,
  Winapi.Windows,
  Winapi.Messages,
  Pokedelphi.View.Main in '..\src\View\Pokedelphi.View.Main.pas' {FrmPrincipal},
  Pokedex.Styles.Constants in '..\src\View\Pokedex.Styles.Constants.pas',
  Pokedelphi.Controller.Download in '..\src\Controller\Pokedelphi.Controller.Download.pas',
  Pokedelphi.Controller.Pokedex in '..\src\Controller\Pokedelphi.Controller.Pokedex.pas',
  PokeDelphi.Controller.Styles in '..\src\Controller\PokeDelphi.Controller.Styles.pas',
  System.SysUtils;



{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AddFontResource(PChar(ExtractFilePath(ParamStr(0))+'Poppins.ttf'));
  SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
