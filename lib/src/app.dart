//Immport flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget{
  createState(){
    return AppState();
  }

}
//Create a class that will be our custom widget
//This class must extend the 'StatelessWidget' bases class
class AppState extends State<App>{
  int counter = 0;
 List<ImageModel> images = [];

  void fetchImage() async{
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    
    setState(() {
      images.add(imageModel);  
    });
    
  } 

  Widget build(context){
    return MaterialApp(
      home:Scaffold( 
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
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