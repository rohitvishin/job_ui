import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:login/screen/drawer.dart';
void main()=> runApp(ShowList());

class ShowList extends StatefulWidget {
  const ShowList({ Key? key }) : super(key: key);

  @override
  _ShowListState createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  void search(){

}
  void routing(){
  Navigator.pushNamed(context, '/job_detail');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              actions: [
                IconButton(onPressed: search, icon: Icon(Icons.search),)
              ],
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
            body: ListView.builder(
                  
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index){
                  return SingleChildScrollView(
                    child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
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
                  );
                }
                ),
                floatingActionButton: FloatingActionButton(
                elevation: 50,
                hoverColor: Colors.orangeAccent,
                focusColor: Colors.orange[600],
                backgroundColor: Colors.orange[600],
                autofocus: true,
                onPressed: () {
                },
                child: Icon(Icons.filter_alt,),
                tooltip: 'Filter',
              ),
                floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
           ),
      ),
    );
  }
}