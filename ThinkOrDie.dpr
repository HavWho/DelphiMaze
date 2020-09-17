program ThinkOrDie;

uses
  Forms,
  MazeForm in 'MazeForm.pas' {Maze},
  MainMenuForm in 'MainMenuForm.pas' {MainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.CreateForm(TMaze, Maze);
  Application.Run;
end.
