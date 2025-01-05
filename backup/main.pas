unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  SpinEx;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
    FloatEdit: TEdit;
    FloatSpinEditEx: TFloatSpinEditEx;
    IntEdit1: TEdit;
    IntEdit2: TEdit;
    IntEdit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabeledEdit: TLabeledEdit;
    MyMemo: TMemo;
    SpinEditEx1: TSpinEditEx;
    SpinEditEx2: TSpinEditEx;
    SpinEditEx3: TSpinEditEx;
    procedure FloatInput(Sender: TObject; var Key: char);
    procedure IntInput(Sender: TObject; var Key: char);
    procedure Button1Click(Sender: TObject);
  private

  public
    constructor create(aOwner: tComponent); override;
    destructor destroy; override;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

uses
  MyStrings;

{ TMainForm }

constructor tMainForm.create(aOwner: tComponent);
begin
  inherited create(aOwner);
end;

destructor tMainForm.destroy;
begin
  inherited destroy;
end;

procedure tMainForm.FloatInput(Sender: TObject; var Key: char);
begin
  MyFloatInput(Sender, Key);
end;

procedure tMainForm.IntInput(Sender: tObject; var Key: char);
begin
  MyIntInput(Sender, Key);
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  MyFloatNumber: extended;
  MyIntNumber: int64;
  MyInt: integer;
begin
  MyMemo.Clear;
  if Length(FloatEdit.Text) > 0 then
  begin
    MyMemo.Lines.add('');
    MyFloatNumber := Str2Float(FloatEdit.Text);
    MyMemo.Lines.add('         Input im TEdit-Input: ' + Float2Str(MyFloatNumber, 12, 6));
    MyFloatNumber := Str2Float(LabeledEdit.Text);
    MyMemo.Lines.add('  Input im TLabeledEdit-Input: ' + Float2Str(MyFloatNumber, 12, 6));
    MyMemo.Lines.add('');
    MyIntNumber := Str2Int(IntEdit1.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + Int2Str(MyIntNumber, 10));
    MyIntNumber := Str2Int(IntEdit2.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + Int2Str(MyIntNumber, 10));
    MyIntNumber := Str2Int(IntEdit3.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + Int2Str(MyIntNumber, 10));
    MyMemo.Lines.add('');
    MyMemo.Lines.add('');
    MyMemo.Lines.Add(' Ausgabe der Integer mit StrToInt und IntToStr:');
    MyInt := StrToInt(SpinEditEx1.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + IntToStr(MyInt));
    MyInt := StrToInt(SpinEditEx2.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + IntToStr(MyInt));
    MyInt := StrToInt(SpinEditEx3.Text);
    MyMemo.Lines.add(' Integer input im TEdit-Input: ' + IntToStr(MyInt));
    MyMemo.Lines.add('');
    MyMemo.Lines.add('');
    MyFloatNumber := FloatSpinEditEx.Value;
    MyMemo.Lines.add('     Input im FloatSpinEditEx: ' + FloatToStr(MyFloatNumber));
    MyIntNumber := SpinEditEx1.Value;
    MyMemo.Lines.add('          Input im SpinEditEx: ' + IntToStr(MyIntNumber));
  end;
end;

end.

