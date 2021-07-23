import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screen/drawer.dart';
void main()=> runApp(Profile());

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ShowListState createState() => _ShowListState();
}
void search(){

}
class _ShowListState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              actions: [
                IconButton(onPressed: search, icon: Icon(Icons.search),)
              ],
              title: Text("Profile",style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white),),
            ),
            drawer: HeadApp(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/31363111?v=4'),
                    backgroundColor: Colors.brown.shade800,
                    child: const Text('AH'),
                  ),
                ],
            ),
        ),
        ),
      );
  }
}