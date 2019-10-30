import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1,num2,result=0;

  final TextEditingController txt1=new TextEditingController();
  final TextEditingController txt2=new TextEditingController();


  void Add(){
    setState(() {
      num1=int.parse(txt1.text);
      num2=int.parse(txt2.text);
//      if(num1==0||num2==0){
//        result=int.parse("Please Enter Number")  ;
//      }
      result=num1+num2;
    });
  }
  void Sub(){
    setState(() {
      num1=int.parse(txt1.text);
      num2=int.parse(txt2.text);
      result=num1-num2;
    });
  }

  void Multi(){
    setState(() {
      num1=int.parse(txt1.text);
      num2=int.parse(txt2.text);
      result=num1*num2;
    });
  }
  void Div(){
    setState(() {
      num1=int.parse(txt1.text);
      num2=int.parse(txt2.text);
      result=num1~/num2;
    });
  }
  void Cleartext(){
    setState(() {
     txt1.text=" ";
     txt2.text=" ";
     result=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body:Column(
        children: <Widget>[
          new Text("Output :\t ${result}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32.0),),
          new TextField(
            decoration:new InputDecoration(hintText: "Enter first No.") ,
            keyboardType: TextInputType.number,
            keyboardAppearance: Brightness.dark,
            controller: txt1,
            autofocus: true,
          ),
          new TextField(
            decoration:new InputDecoration(hintText: "Enter first No.") ,
            keyboardType: TextInputType.number,
            keyboardAppearance: Brightness.dark,
            controller: txt2,
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                  onPressed:Add,
                child: Text("+",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),),
                color: Colors.blue,
              ),
              new MaterialButton(
                onPressed: Sub,
                child: Text("-",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),),
                color: Colors.blue,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                onPressed: Multi,
                child: Text("*",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),),
                color: Colors.blue,
              ),
              new MaterialButton(
                onPressed: Div,
                child: Text("/",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),),
                color: Colors.blue,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(
                onPressed: Cleartext,
                child: Text("Clear",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                color: Colors.deepOrange,
              )
            ],
          )

        ],
      ),
    );
  }
}
