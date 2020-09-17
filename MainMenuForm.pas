unit MainMenuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainMenu = class(TForm)
    EasyButton: TButton;
    HardButton: TButton;
    VeryHardButton: TButton;
    GameNameLbl: TLabel;
    TimerTestButton: TButton;
    procedure EasyButtonClick(Sender: TObject);
    procedure HardButtonClick(Sender: TObject);
    procedure VeryHardButtonClick(Sender: TObject);
    procedure TimerTestButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainMenu: TMainMenu;

implementation
uses
  MazeForm;

{$R *.dfm}

procedure TMainMenu.EasyButtonClick(Sender: TObject);
begin
  Seconds:= 120;
  Maze.Show;
  MainMenu.Visible:= False;
end;

procedure TMainMenu.HardButtonClick(Sender: TObject);
begin
  Seconds:= 60;
  Maze.Show;
  MainMenu.Visible:= False;
end;

procedure TMainMenu.VeryHardButtonClick(Sender: TObject);
begin
  Seconds:= 45;
  Maze.Show;
  MainMenu.Visible:= False;
end;

procedure TMainMenu.TimerTestButtonClick(Sender: TObject);
begin
  Seconds:= 5;
  Maze.Show;
  MainMenu.Visible:= False;
end;

end.
