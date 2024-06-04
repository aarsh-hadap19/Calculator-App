import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0,num2=0,ans=0;
  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");

  void doAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1*num2;
    });
  }

  void doDiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1~/num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                "OutPut: $ans",
                style: new TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter number 1",
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Enter number 2"
                ),
                controller: t2,
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(onPressed: doAdd, child: new Text("+"),color: Colors.orange,),
                  new MaterialButton(onPressed: doSub, child: new Text("-"),color: Colors.orange,)
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(onPressed: doMul, child: new Text("*"),color: Colors.orange,),
                  new MaterialButton(onPressed: doDiv, child: new Text("/"),color: Colors.orange,)
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new MaterialButton(onPressed: doClear, child: new Text("Clear"),color: Colors.orange,),
                ]
                ),


            ],
          )

      ),
    );
  }
}
