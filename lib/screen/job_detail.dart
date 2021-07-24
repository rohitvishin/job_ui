import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=> runApp(ShowDetail());

class ShowDetail extends StatefulWidget {
  const ShowDetail({ Key? key }) : super(key: key);

  @override
  _ShowListState createState() => _ShowListState();
}
void search(){

}
class _ShowListState extends State<ShowDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text("Job Details",style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white),),
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
              child: Column(
                
                children: [
                  Container(
                          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                          padding: EdgeInsets.all(10),
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
                          
                            ],
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Details",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("testLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Company Name",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Darwin platform group of companies",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Location",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Vagator, Goa, India",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Experience",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("1 Plus Year",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Category",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Information Technology",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("Vacancy",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.deepOrange),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("12 Plus ",style: GoogleFonts.sourceSansPro(fontSize: 15,color: Colors.grey),),
                            ),
                          ],
                        ),

                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ElevatedButton (
                                style: ButtonStyle(
                                  
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                                ),
                                onPressed: search,
                                child: Text("Apply Now", style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ]
            ),
        ),
        ),
      );
  }
}