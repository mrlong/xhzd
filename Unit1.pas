////////////////////////////////////
//       https://code.google.com/p/pebongo/

unit Unit1;

interface

uses
  //MongoDB,
  //MongoBson,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ADODB, StdCtrls, DBCtrls, Buttons;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    dbnvgr1: TDBNavigator;
    pnl2: TPanel;
    dbmmojijie: TDBMemo;
    dbmmoxiangjie: TDBMemo;
    btn1: TButton;
    mmo1: TMemo;
    mmo2: TMemo;
    lbl1: TLabel;
    chk1: TCheckBox;
    edt1: TEdit;
    tbl2: TADOTable;
    con2: TADOConnection;
    ds2: TDataSource;
    dbgrd2: TDBGrid;
    dbmmocontent: TDBMemo;
    dbmmoderivation: TDBMemo;
    dbmmosamples: TDBMemo;
    btn2: TButton;
    con3: TADOConnection;
    tbl3: TADOTable;
    ds3: TDataSource;
    dbgrd3: TDBGrid;
    btn3: TBitBtn;
    //procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  MongoDB,
  _bson;

  

{$R *.dfm}

(*
procedure TForm1.btn1Click(Sender: TObject);
var

  mymongo : TMongo;
  mydbs : TStringArray;
  ns : string;
  bb : TBsonBuffer;
  b : TBson;
  mystr,mystr2 : string;

  i : Integer;
  mycount : Integer;


  function ToUTF8Encode(str: string): string;
  var
    u:UTF8String;
    Len:Integer;
  begin
    u:=AnsiToUTF8(str);
    Len := Length(u);
    SetLength(Result, Len shl 1);
    BinToHex(PChar(u), PChar(Result), Len);
  end;

  procedure displayCollections(db : string);
  var
    collections : TStringArray;
    j : Integer;
  begin

    mymongo.getDatabaseCollections(db);
    {
    collections := mymongo.getDatabaseCollections(db);
    for j := 0 to Length(collections)-1 do
       mmo1.Lines.Add(collections[j]);
    }
  end;


begin
   //写入到库内
   mymongo := TMongo.Create('112.124.59.236');

   try
     
    if not mymongo.isConnected then
    begin
       ShowMessage('not conntion');
      Exit;
    end;



    //mydbs:=mymongo.getDatabases();
    for i:=0 to Length(mydbs)-1 do
    begin
      ShowMessage(mydbs[i]);
    end;


    ns := 'xhzd.xhzd';
    //displayCollections('xhzd');


    mycount := tbl1.RecordCount;

    i :=0;
    tbl1.First;
    if tbl1.Locate('zi','国',[loPartialKey]) then
    //while not tbl1.Eof do
    begin

      i := i +1;
      bb := TBsonBuffer.Create;


      mystr := Trim(tbl1.fieldByName('zi').AsString);
      edt1.Text := mystr;
      bb.Append('phone',edt1.Text);

      {bb.AppendStr('py',tbl1.fieldByName('py').AsString);
      bb.AppendStr('wubi',tbl1.fieldByName('wubi').AsString);
      bb.AppendStr('bihua',tbl1.fieldByName('bihua').AsString);
      bb.AppendStr('pinyin',tbl1.fieldByname('pinyin').AsString);
      }
      {
      mystr := tbl1.fieldByName('jijie').AsString;
      mystr := StringReplace(mystr,'<br>','\n',[rfReplaceAll]);
      bb.AppendStr('jijie',mystr);


      mystr2 := tbl1.fieldByName('xiangjie').AsString;
      mystr2 := StringReplace(mystr,'<br>','\n',[rfReplaceAll]);
      bb.AppendStr('xiangjie',mystr2);
       }
      
      //bb.AppendStr('phone','龜');
      //bb.appendCode('phone',('龜'));

      b := bb.finish();

     // b := BSON(['name', '龜', 'age', 64,
     //                  'address', '{',
     //                     'street', '109 Vine Street',
     //                     'city', 'New Haven',
     //                     '}' ]);


      if Assigned(b) then
        mymongo.insert(ns,b)
      else begin
        mmo2.Lines.Add(Format('zi=%s###py=%s###wubi=%s###bihua###pinyin=%s###jijie=%s###xingjie',[tbl1.fieldByName('zi').AsString,tbl1.fieldByName('py').AsString,tbl1.fieldByName('wubi').AsString,
          tbl1.fieldByName('bihua').AsString,tbl1.fieldByname('pinyin').AsString,mystr,mystr2]));

      end;
      bb.Free;

      lbl1.Caption := Format('%d/%d',[i,mycount]);
      //if chk1.Checked then Break;
      Application.ProcessMessages;
      tbl1.Next;
    end;

   finally
     mymongo.disconnect;
   end;


end;
*)

procedure TForm1.btn2Click(Sender: TObject);
var
  bson              : TBSONDocument;
  item              : TBSONArrayItem;
  mongo             : TMongoConnection;
  coll              : TMongoCollection;
  mycount ,i   : Integer;
  mystr,mystr2 : string;
begin
  {
  mongo := TMongoConnection.Create('112.124.59.236');
  mmo1.lines.add( booltostr( mongo.Connected, true ) );
  mongo.GetDatabase( 'test' );
  coll := mongo.GetCollection( 'addresses' );
  cursor := coll.find( );

  mmo1.lines.add( inttostr( cursor.Count ) );
  for i := 0 to cursor.Count - 1 do
    mmo1.lines.add( UTF8Decode(cursor.Result[i].ToString) );//print as JSON

  cursor.Free;
  coll.Free;
  mongo.Free;
  }

 { 【解释】：准备好了，以备急用，眼下暂存不用。
   【出自】：清·吴趼人《糊涂世界》：“虽说备而不用，到得那时候，听凭兵丁造一句谣言，开上几排枪，那人可就死了不少。”
   【示例】：凡是零星物件，本地买不出，一定要用，或是～的，也都齐全。
    ◎清·颐琐《黄绣球》第十七回
 }

  mongo := TMongoConnection.Create('112.124.59.236');
  //mongo := TMongoConnection.Create('112.124.59.236');
  mmo1.lines.add( booltostr( mongo.Connected, true ) );
  mongo.GetDatabase( 'xhzd' );
  coll := mongo.GetCollection('cycds');


  mycount := tbl2.RecordCount;

    i :=0;
    tbl2.First;

    while not tbl2.Eof do
    begin

      i := i +1;


      bson := TBSONDocument.Create;
      bson.Values['cy'] := TBSONStringItem.Create(UTF8Encode(Trim(tbl2.fieldByName('name').AsString)));
      bson.Values['pinyin'] := TBSONStringItem.Create(UTF8Encode(tbl2.fieldByname('spell').AsString));
      bson.Values['js'] := TBSONStringItem.Create(UTF8Encode(tbl2.fieldByname('content').AsString));
      bson.Values['cz'] := TBSONStringItem.Create(UTF8Encode(tbl2.fieldByname('derivation').AsString));
      bson.Values['sl'] := TBSONStringItem.Create(UTF8Encode(tbl2.fieldByname('samples').AsString));


      //mystr := tbl1.fieldByName('jijie').AsString;
      //mystr := StringReplace(mystr,'<br>','\n',[rfReplaceAll]);
      //bson.Values['jijie'] := TBSONStringItem.Create(UTF8Encode(mystr));


      //mystr2 := tbl1.fieldByName('xiangjie').AsString;
      //mystr2 := StringReplace(mystr2,'<br>','\n',[rfReplaceAll]);
      //bson.Values['xiangjie'] := TBSONStringItem.Create(UTF8Encode(mystr2));

      coll.save(bson);


      {bb.AppendStr('py',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      }
      {

       }
      
      //bb.AppendStr('phone','龜');
      //bb.appendCode('phone',('龜'));

      //b := bb.finish();

     // b := BSON(['name', '龜', 'age', 64,
     //                  'address', '{',
     //                     'street', '109 Vine Street',
     //                     'city', 'New Haven',
     //                     '}' ]);




      lbl1.Caption := Format('%d/%d',[i,mycount]);
      if chk1.Checked then Break;
      Application.ProcessMessages;
      tbl2.Next;
    end;



  bson.Free;
  coll.Free;
  mongo.Free;
 
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  bson              : TBSONDocument;
  item              : TBSONArrayItem;
  mongo             : TMongoConnection;
  coll              : TMongoCollection;
  mycount ,i   : Integer;
  mystr,mystr2 : string;
begin

  //item := TBSONArrayItem.Create;
  //item.Items[0] := TBSONStringItem.Create( UTF8Encode('国家医药管理局'));
  //item.Items[1] := TBSONDoubleItem.Create( 5.05 );
  //item.Items[2] := TBSONIntItem.Create( 1986 );
  //bson.Values['BSON'] := item;
  //bson.SaveToFile( ExtractFilePath( Application.ExeName ) + 'hello.bson' );



  mongo := TMongoConnection.Create('112.124.59.236');
  //mongo := TMongoConnection.Create('112.124.59.236');
  mmo1.lines.add( booltostr( mongo.Connected, true ) );
  mongo.GetDatabase( 'xhzd' );
  coll := mongo.GetCollection('xhzds');


  mycount := tbl1.RecordCount;

    i :=0;
    tbl1.First;

    while not tbl1.Eof do
    begin

      i := i +1;

      bson := TBSONDocument.Create;
      bson.Values['zi'] := TBSONStringItem.Create(UTF8Encode(tbl1.fieldByName('zi').AsString));
      bson.Values['py'] := TBSONStringItem.Create(UTF8Encode(tbl1.fieldByName('py').AsString));
      bson.Values['wubi'] := TBSONStringItem.Create(UTF8Encode(tbl1.fieldByName('wubi').AsString));
      bson.Values['bihua'] := TBSONStringItem.Create(UTF8Encode(tbl1.fieldByName('bihua').AsString));
      bson.Values['bushou'] :=  TBSONStringItem.Create(UTF8Encode(tbl1.fieldByName('bushou').AsString));
      bson.Values['pinyin'] := TBSONStringItem.Create(UTF8Encode(tbl1.fieldByname('pinyin').AsString));

      mystr := tbl1.fieldByName('jijie').AsString;
      //mystr := StringReplace(mystr,'<br>','\n',[rfReplaceAll]);
      bson.Values['jijie'] := TBSONStringItem.Create(UTF8Encode(mystr));


      mystr2 := tbl1.fieldByName('xiangjie').AsString;
      //mystr2 := StringReplace(mystr2,'<br>','\n',[rfReplaceAll]);
      bson.Values['xiangjie'] := TBSONStringItem.Create(UTF8Encode(mystr2));

      coll.save(bson);


      {bb.AppendStr('py',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      }
      {

       }
      
      //bb.AppendStr('phone','龜');
      //bb.appendCode('phone',('龜'));

      //b := bb.finish();

     // b := BSON(['name', '龜', 'age', 64,
     //                  'address', '{',
     //                     'street', '109 Vine Street',
     //                     'city', 'New Haven',
     //                     '}' ]);




      lbl1.Caption := Format('%d/%d',[i,mycount]);
      //if chk1.Checked then Break;
      Application.ProcessMessages;
      tbl1.Next;
    end;



  bson.Free;
  coll.Free;
  mongo.Free;
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  bson              : TBSONDocument;
  item              : TBSONArrayItem;
  mongo             : TMongoConnection;
  coll              : TMongoCollection;
  mycount ,i   : Integer;
  mystr,mystr2 : string;
begin
  {
  mongo := TMongoConnection.Create('112.124.59.236');
  mmo1.lines.add( booltostr( mongo.Connected, true ) );
  mongo.GetDatabase( 'test' );
  coll := mongo.GetCollection( 'addresses' );
  cursor := coll.find( );

  mmo1.lines.add( inttostr( cursor.Count ) );
  for i := 0 to cursor.Count - 1 do
    mmo1.lines.add( UTF8Decode(cursor.Result[i].ToString) );//print as JSON

  cursor.Free;
  coll.Free;
  mongo.Free;
  }

 { 【解释】：准备好了，以备急用，眼下暂存不用。
   【出自】：清·吴趼人《糊涂世界》：“虽说备而不用，到得那时候，听凭兵丁造一句谣言，开上几排枪，那人可就死了不少。”
   【示例】：凡是零星物件，本地买不出，一定要用，或是～的，也都齐全。
    ◎清·颐琐《黄绣球》第十七回
 }

  mongo := TMongoConnection.Create('112.124.59.236');
  //mongo := TMongoConnection.Create('112.124.59.236');
  mmo1.lines.add( booltostr( mongo.Connected, true ) );
  mongo.GetDatabase( 'xhzd' );
  coll := mongo.GetCollection('hycds');


  mycount := tbl3.RecordCount;

    i :=0;
    tbl3.First;

    while not tbl3.Eof do
    begin

      i := i +1;


      bson := TBSONDocument.Create;
      bson.Values['hy'] := TBSONStringItem.Create(UTF8Encode(Trim(tbl3.fieldByName('words').AsString)));
      bson.Values['js'] := TBSONStringItem.Create(UTF8Encode(tbl3.fieldByname('explain').AsString));


      //mystr := tbl1.fieldByName('jijie').AsString;
      //mystr := StringReplace(mystr,'<br>','\n',[rfReplaceAll]);
      //bson.Values['jijie'] := TBSONStringItem.Create(UTF8Encode(mystr));


      //mystr2 := tbl1.fieldByName('xiangjie').AsString;
      //mystr2 := StringReplace(mystr2,'<br>','\n',[rfReplaceAll]);
      //bson.Values['xiangjie'] := TBSONStringItem.Create(UTF8Encode(mystr2));

      coll.save(bson);


      {bb.AppendStr('py',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      bb.AppendStr('',);
      }
      {

       }
      
      //bb.AppendStr('phone','龜');
      //bb.appendCode('phone',('龜'));

      //b := bb.finish();

     // b := BSON(['name', '龜', 'age', 64,
     //                  'address', '{',
     //                     'street', '109 Vine Street',
     //                     'city', 'New Haven',
     //                     '}' ]);




      lbl1.Caption := Format('%d/%d',[i,mycount]);
      if chk1.Checked then Break;
      Application.ProcessMessages;
      tbl3.Next;
    end;



  bson.Free;
  coll.Free;
  mongo.Free;
 
end;

end.
