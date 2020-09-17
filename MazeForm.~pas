unit MazeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TDirect = (DLeft, DRight, DUp, DDown);
  TMaze = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Player: TShape;
    Timer1: TTimer;
    TimerLabel: TLabel;
    FinSpeedBtn: TSpeedButton;
    Shape35: TShape;
    function InterSect: Boolean;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MovePlayer(Direction: Tdirect);
end;

var
  Maze: TMaze;
  Seconds: Integer;

implementation
uses
  MainMenuForm;

{$R *.dfm}

function TMaze.InterSect:Boolean;
var
  i:integer;
  rect:Trect;
begin
  for i:=0 to pred(ComponentCount) do
  if (Components[i] is TShape) and ((Components[i] as Tshape).Name<>'Player') then
    if InterSectRect(Rect,Player.BoundsRect,(Components[i] as TShape).BoundsRect) then
    begin
      Result:=True;
      Exit;
    end;
  Result:=False;
end;

procedure TMaze.Timer1Timer(Sender: TObject);
begin
  TimerLabel.Caption:= IntToStr(Seconds);
  if (Seconds = 0) and (Maze.Active = True) then
  begin
    ShowMessage('You Lost!');
    Player.Top:=456;
    Player.Left:=48;
    Seconds:=0;
    Maze.Close;
    MainMenu.Show;
  end
  else
    if(Seconds = 0) then
      TimerLabel.Caption:= 'Time Is Gone!'
    else
      Seconds:= Seconds - 1;
end;

procedure TMaze.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Seconds:=0;
  Player.Top:=456;
  Player.Left:=48;
  MainMenu.Show;
end;

procedure TMaze.MovePlayer(Direction: TDirect);
begin
  case Direction of
    DLeft:
      if not(InterSect) then
        Player.Left:=Player.Left - 5
      else
        Player.Left:=Player.Left + 5;
    DRight:
      if not(InterSect) then
        Player.Left:=Player.Left + 5
      else
        Player.Left:=Player.Left - 5;
    DUp:
      if not(InterSect) then
        Player.Top:=Player.Top - 5
      else
        Player.Top:=Player.Top + 5;
    DDown:
      if not(InterSect) then
        Player.Top:=Player.Top + 5
      else
        Player.Top:=Player.Top - 5;
  end;
end;

procedure TMaze.FormKeyPress(Sender: TObject; var Key: Char);
var
  R:TRect;
begin
  case key of
    'W','w','Ö','ö':
      MovePlayer(DUp);
    'S','s','Û','û':
      MovePlayer(DDown);
    'A','a','Ô','ô':
      MovePlayer(DLeft);
    'D','d','Â','â':
      MovePlayer(DRight);
  end;
  if InterSectRect(R, Player.BoundsRect, FinSpeedBtn.BoundsRect) then
  begin
    Seconds:=0;
    ShowMessage('You Won!');
    Player.Top:=456;
    Player.Left:=48;
    MainMenu.Visible:=not(MainMenu.Visible);
    Maze.Close;
    MainMenu.Show;
  end;
end;


end.

