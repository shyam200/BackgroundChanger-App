import'package:flutter/material.dart';
import'dart:math';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext context)
  {
    return MaterialApp(
        title: 'BG Changer',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar:AppBar(
            title: Text('Random Background') ,
          ),
          body: HomePage(),

        ),
        
    );
  }
}

class HomePage extends StatefulWidget{
  @override
   HomePageState createState() => HomePageState();
}

class HomePageState extends State <HomePage>{

  var colors=[
    Colors.red,
    Colors.pink,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.cyan,
    Colors.deepOrange,
  ];
var currentcolor=Colors.white;
randomColor(){
  //int counter=0;
  var rnd=Random().nextInt(colors.length);
  setState((){
    currentcolor=colors[rnd];
  });
}
@override 
Widget build(BuildContext context){
    return Container(
      color: currentcolor,
      child: Center(
          child:  SizedBox(
            width: 200.0,
            height: 50.0,
                      child: RaisedButton(
                color: currentcolor,
              
                padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 10.0),
                onPressed: randomColor,
                child: Text('click', style:TextStyle(
                  color: Colors.black,
                   fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                elevation:20.0,
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
          ),
       ),
    );
 }
}
