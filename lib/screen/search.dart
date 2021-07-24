import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Search> {
  final bodyController = TextEditingController();
  final titleController = TextEditingController();
  
  postData() async{
    Navigator.pushNamed(context, '/showlist');      
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.deepOrange,
                  title: Text("Job Search",style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white),),
                ),
                drawer: Drawer(
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("Home"),
                        onTap: (){
                          Navigator.pushNamed(context, '/search');
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
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 60,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                  )]
                                ),
                                child: TextField(
                                        controller: titleController,
                                        decoration: InputDecoration(
                                          hintText: "Job Title",
                                          contentPadding: EdgeInsets.only(left: 20),
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                        ),
                                      ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                  )]
                                ),
                                child: TextField(
                                        controller: titleController,
                                        decoration: InputDecoration(
                                          hintText: "Mumbai",
                                          icon: Icon(Icons.place),
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                        ),
                                      ),
                              ),
                              SizedBox(height: 40,),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50,),                                
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange[900]
                                ),
                                child: ElevatedButton(
                                  style: ButtonStyle(                                    
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                                  ),
                                  onPressed: postData,
                                  child: 
                                  Text("Search Job", style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,),),
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