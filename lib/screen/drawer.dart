import 'package:flutter/material.dart';

class HeadApp extends StatefulWidget {
  const HeadApp({ Key? key }) : super(key: key);

  @override
  _HeadAppState createState() => _HeadAppState();
}

class _HeadAppState extends State<HeadApp> {
  void search(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Home"),
                    onTap: (){
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                  ListTile(
                    title: Text("Profile"),
                    onTap: (){
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                  ListTile(
                    title: Text("Logout"),
                    onTap: (){
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              ),
        ),         
    );
  }
}