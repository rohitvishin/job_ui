import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Second extends StatefulWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

   Future<List<String>> fetchAlbum() async {

    var data = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    var jsonData = json.decode(data.body);    
    List<String> users = [];
    var i=0;
    for(var u in jsonData){
      users.insert(i, u['title']);
      i++;
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                        Colors.deepOrange, 
                        Colors.deepOrangeAccent,
                        Colors.orangeAccent,
                ]
              )
            ),
            child: Column(
              
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Second Screen", style: TextStyle(color: Colors.white, fontSize: 40),),
                      SizedBox(height: 10,),
                      // Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ],  
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                       child: FutureBuilder(
        future: fetchAlbum(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
           if(snapshot.data==null){
                return Container(
                  child: Center(
                  child: CircularProgressIndicator(),
                ),
                );
           }
           else{
            return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        title: Text(snapshot.data[index],style:TextStyle(fontSize: 18,),),
                      );
                  }
              );
            }
         }
      ),
              ),
                  ),
              ],
            ),
          ),
        ),
        ),
    );
  }
}