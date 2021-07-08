import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/sky.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          padding: EdgeInsets.all(10),
          child: SafeArea(
            child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,                
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                                            
                    ),
                    )
                  ],
              ),
              Column(             
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,   
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 250),
                      child:Text("Login",style:GoogleFonts.righteous(color: Colors.white,fontSize: 20),),
                    )
                  ],
              ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                    child: Text("boniad",style: GoogleFonts.righteous(color: Colors.white,fontSize: 40,),
                  ),
                ),
              ],
            ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Center(
                  child: Text("Username",style: GoogleFonts.righteous(color: Colors.white,fontSize: 15,),
                ))
              ],
              ),
            ]
          ),
        ),
      ),
    ),
    );
  }
}