//Immport flutter helper library
import 'package:flutter/material.dart';
//Create a class that will be our custom widget
//This class must extend the 'StatelessWidget' base class
class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      home:Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Jothi');
          },
        ), 
        appBar: AppBar(
          title: Text('Lets see some Images!'),
        ),
      ),
    );
  }
}


//Must define a 'build' method that returns
//the widget that *this* widget will show