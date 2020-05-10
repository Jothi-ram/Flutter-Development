// I need to import a helper library 
//from flutter to get content on the screen
//Define a 'main' function to run when our app starts
//Create a new text widget to show some text 
//on the screen
//take that widget and get it on the screen

import 'package:flutter/material.dart';

void main(){
  var app = MaterialApp(
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
runApp(app);
}
