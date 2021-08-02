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
    void routing(){
  Navigator.pushNamed(context, '/job_detail');
  }
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
                              SizedBox(height: 20,),
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
                              SizedBox(height: 40,),
                              Container(
                                child: Text("Popular Jobs",style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.deepOrange,fontWeight: FontWeight.bold,),),
                              ),
                              SizedBox(height: 20,),
                              Container(      
                                child: Container(
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0,1), // changes position of shadow
                                  ),
                                  ],
                                  
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      routing();
                                    },
                                    child: Column(
                                      children: [
                                        Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Designer Job",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                                          ]
                                        ),
                                        SizedBox(width: 120,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.alarm,color: Colors.deepOrange,size: 12,),
                                          ]
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children:
                                          [
                                            Text("20th August 2021",style: GoogleFonts.sourceSansPro(fontSize: 12,color: Colors.deepOrange),),
                                          ]
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.place,color: Colors.deepOrange,size: 12,),
                                          ]
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Vagator, Goa",style: GoogleFonts.sourceSansPro(fontSize: 12,color: Colors.grey),),
                                          ]
                                        ),
                                        SizedBox(width: 150,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children:
                                          [
                                            Text("CV Sent",style: GoogleFonts.sourceSansPro(fontSize: 12,color: Colors.grey),),
                                          ]
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children:
                                          [
                                            Text("22",style: GoogleFonts.sourceSansPro(fontSize: 12,color: Colors.deepOrange),),
                                          ]
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Apply",style: GoogleFonts.sourceSansPro(fontSize: 12,color: Colors.deepOrange),),
                                          ]
                                        ),
                                        Column(
                                          children: [
                                            Icon(Icons.arrow_forward,color: Colors.deepOrange,size: 12,),
                                          ]
                                        ),
                                        SizedBox(width: 230,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children:
                                          [
                                            Icon(Icons.favorite_border,color: Colors.deepOrange,size: 14,),
                                          ]
                                        )
                                      ],
                                    ),
                                      ],
                                    ),
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