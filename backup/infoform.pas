unit InfoForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TMyInfoForm }

  TMyInfoForm = class(TForm)
    InfoMemo: TMemo;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Separator1: TMenuItem;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
  private

  public

  end;

var
  MyInfoForm: TMyInfoForm;

implementation

{$R *.lfm}

{ TMyInfoForm }

procedure TMyInfoForm.MenuItem2Click(Sender: TObject);
begin
  Close;
end;

procedure TMyInfoForm.MenuItem3Click(Sender: TObject);
begin
  InfoMemo.Clear;
end;

end.

