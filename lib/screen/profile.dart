import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:login/screen/drawer.dart';
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
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Column(
                  children: [
                    Container(                      
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,  
                        children: [
                          CircleAvatar(
                          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/31363111?v=4'),
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          ),
                          Icon(Icons.edit,size: 20,),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Row(
                        children: [
                          Expanded(
                            child:TextField(
                            decoration: InputDecoration(
                                hintText: "Full name",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child:TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child:TextField(
                            decoration: InputDecoration(
                                hintText: "Mobile",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child:TextField(
                            decoration: InputDecoration(
                                hintText: "Date of birth",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child:TextField(
                            decoration: InputDecoration(
                                hintText: "LinkedIn",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ElevatedButton (
                                style: ButtonStyle(
                                  
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                                ),
                                onPressed: search,
                                child: Text("Update", style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ],
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