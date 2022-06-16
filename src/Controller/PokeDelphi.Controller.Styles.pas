unit PokeDelphi.Controller.Styles;

interface

uses
  Vcl.ExtCtrls, Vcl.Forms, Vcl.Controls, Vcl.Graphics, System.Classes;

procedure SetPanelColorEnter(Component: TComponent);
procedure SetPanelColorLeave(Component: TComponent);
procedure SetPanelEvents(AForm: TForm);

implementation

uses Pokedex.Styles.Constants;

procedure SetPanelColorEnter(Component: TComponent);
begin
  if TComponent(Component).ClassName = 'TPanel' then
    TPanel(Component).Color := BUTTON_COLOR_HOVER
  else if TComponent(Component).ClassName = 'TImage' then
    TPanel(TImage(TComponent(Component)).Parent).Color := BUTTON_NAV_COLOR_HOVER;
end;

procedure SetPanelColorLeave(Component: TComponent);
begin
  if TComponent(Component).ClassName = 'TPanel' then
    TPanel(Component).Color := BUTTON_COLOR
  else if TComponent(Component).ClassName = 'TImage' then
    TPanel(TImage(TComponent(Component)).Parent).Color := BUTTON_NAV_COLOR;
end;

procedure SetPanelEvents(AForm: TForm);
var
  I, Index: Integer;
begin
  for I := 0 to Pred(AForm.ComponentCount) do
  begin
    if (AForm.Components[I].ClassName = 'TPanel') and (AForm.Components[i].Tag = 25) then
    begin
      Index := I;
    end;
  end;

  for I := 0 to Pred(AForm.ComponentCount) do
  begin
    if (AForm.Components[I].ClassName = 'TPanel') and ((AForm.Components[i].Tag = 10) or (AForm.Components[i].Tag = 12)) then
    begin
      TPanel(AForm.Components[I]).Cursor := crHandPoint;
      TPanel(AForm.Components[I]).Font.Color := clWhite;
      TPanel(AForm.Components[I]).OnMouseEnter := TPanel(AForm.Components[Index]).OnMouseEnter;
      TPanel(AForm.Components[I]).OnMouseLeave := TPanel(AForm.Components[Index]).OnMouseLeave;
    end;
    if (AForm.Components[I].ClassName = 'TImage') and ((AForm.Components[i].Tag = 10) or (AForm.Components[i].Tag = 12)) then
    begin
      TImage(AForm.Components[I]).Cursor := crHandPoint;
      TImage(AForm.Components[I]).OnMouseEnter := TPanel(AForm.Components[Index]).OnMouseEnter;
      TImage(AForm.Components[I]).OnMouseLeave := TPanel(AForm.Components[Index]).OnMouseLeave;
    end;
  end;

end;

end.
