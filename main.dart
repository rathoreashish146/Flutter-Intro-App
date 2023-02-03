import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
 runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: const HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.green,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {
  @override


  String mytext = "Hello World";
    _changeText(){
     setState(() {
      if(mytext.startsWith("H")){
           mytext = "Welcome To MyApp";

      }
      else{
        mytext = "Hello World";
      }
     });
}


Widget _bodywidget(){
  return new Container(
    padding: new EdgeInsets.all(8.0),
   child: new Center(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        new Text(mytext,style: new TextStyle(
          fontSize: 30.0,
          
        ),),
      ],
    ),
   ),
   );
}

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodywidget(),
      floatingActionButton: new FloatingActionButton(
        child:new Icon(Icons.add),
        onPressed: _changeText(),
      ),
    );
  }
}