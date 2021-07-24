import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Register> {
  final bodyController = TextEditingController();
  final titleController = TextEditingController();
  
  postData() async{
    Navigator.pushNamed(context, '/showlist');
    // try{
    //     var response = await http.post(
    //     Uri.parse('https://darwindevs.com/flutter/login.php'),
    //     body: {
    //     "title": titleController.text,
    //     "body": bodyController.text,
    //     "userId": 1.toString(),
    //     } 
    //   );
    //   print(response.body);
    //   Navigator.pushNamed(context, '/second');
    // }catch(e){
    //   print("failed");
    // }
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: <Widget>[
                SizedBox(height: 80,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Register", style: GoogleFonts.sourceSansPro(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("DarwinJobs", style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white),),
                    ],  
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 60,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                                )]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: TextField(
                                      controller: titleController,
                                      decoration: InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: TextField(
                                      controller: bodyController,
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                    ),
                                    child: TextField(
                                      controller: bodyController,
                                      decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ],
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
                              child: ElevatedButton (
                                style: ButtonStyle(
                                  
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                                ),
                                onPressed: postData,
                                child: Text("Register", style: GoogleFonts.sourceSansPro(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            SizedBox(height: 40,),
                            InkWell(
                              child: Text("Already registered ? Login", style: TextStyle(color: Colors.blueAccent,decoration: TextDecoration.underline),),
                              onTap: (){
                                Navigator.pushNamed(context, '/');
                              },
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}