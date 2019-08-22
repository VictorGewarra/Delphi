﻿unit Unit1;
// autor Victor Gewarra 2019
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,iniFiles, Vcl.FileCtrl, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    FileListBox1: TFileListBox;
    Panel2: TPanel;
    NewDir: TComboBox;
    NewName: TComboBox;
    NewUndName: TButton;
    Log1: TListBox;
    logmemo: TMemo;
    procedure NewUndNameClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NewDirChange(Sender: TObject);
    procedure NewNameChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DriveComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const spec = 'ü';
var
  Form1: TForm1;
  subnames,selstr:TStringList;
  ini:TMemIniFile;
  DirNomo:string;
   neunomo ,dironl:string;
implementation

{$R *.dfm}

procedure TForm1.DriveComboBox1Change(Sender: TObject);
begin
DirectoryListBox1.Drive := DriveComboBox1.Drive;
end;

procedure TForm1.FileListBox1Click(Sender: TObject);
var mystr,combined:string;
    i,l,j:integer;
begin
subnames.DelimitedText:=FileListBox1.Items.Strings[FileListBox1.ItemIndex];
 combined:='';
subnames.DelimitedText:=FileListBox1.Items.Strings[FileListBox1.ItemIndex];
  for l:=0 to  subnames.Count-1 do   begin
    if not (l=subnames.Count-2) then
    combined:=combined+subnames[l]+' ' else
    combined:=combined+subnames[l];
  newname.Items.Add(combined);
end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ini:=TMemIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'),TEncoding.UTF8);
    ini.WriteString('main','lastpath',DirectoryListBox1.Directory);
    ini.UpdateFile;
     ini.Free;
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 subnames:=TStringlist.Create;
 selstr:=TStringlist.Create;

ini:=TMemIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'),TEncoding.UTF8);
DriveComboBox1.Drive:=DirectoryListBox1.Directory[1] ;
DirectoryListBox1.Directory:=ini.ReadString('main','lastpath','');
 keypreview:=true;
 driveComboBox1.Drive:='f';
 ini.Free;
 logmemo.Visible:= not Logmemo.Visible;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 caption:=IntToStr(key);
 if key=112 then    begin
      logmemo.Visible:= not Logmemo.Visible;
   log1.Visible:=not log1.Visible;
 end;
  
end;

procedure TForm1.NewDirChange(Sender: TObject);
begin
 DirNomo:=NewDir.Text;
end;

procedure TForm1.NewNameChange(Sender: TObject);
begin
  DirNomo:=NewName.Text;
// delete(DirNomo, length(dirnomo)-1, 1);

end;

procedure TForm1.NewUndNameClick(Sender: TObject);
 var i:integer;
begin
dironl:=DirectoryListBox1.Directory+'\';

if not DirectoryExists(dironl+newdir.Text) then
ForceDirectories(dironl+dirNomo);
dirNomo:=dironl+dirNomo;
 caption:=dirnomo;
 log1.Items.Add(IntToStr(GetLastError));

  for i:=0 To FileListBox1.Count-1 do
   if FileListBox1.Selected[i] then
  begin
 neunomo:=StringReplace(FileListBox1.Items.Strings[i],NewName.Text,'',[rfReplaceAll, rfIgnoreCase]);

if RenameFile(dironl+FileListBox1.Items[i],Trim(dirnomo)+'\'+NeuNomo)then log1.Items.Add('succes') else

   end;
  logmemo.Lines.Assign(log1.Items);
  FileListBox1.Update;
  NewName.Clear;
end;

end.
