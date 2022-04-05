import 'dart:js';

import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: petUI(),       
  ));
}
class petUI extends StatefulWidget {
  const petUI({ Key? key }) : super(key: key);

  @override
  State<petUI> createState() => _petUIState();
}
// --------------------------Page 1------------------------------
class _petUIState extends State<petUI> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            
            fit: BoxFit.cover,
            ),
        ),
        padding: EdgeInsets.all(20),
        // color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
                  
              Text('Get Pet', style: TextStyle(fontSize: 52,color: Colors.white,fontFamily: 'San',fontWeight: FontWeight.bold)),
              Expanded(child: Image.asset('assets/images/Group 1.png')),
              Text('Find your Favorite pet close to you',style: TextStyle(fontSize: 42,color: Colors.white,fontFamily: 'San',fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              Text('Join and discover your favorite pet in your locality',style: TextStyle(fontFamily:"San",fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page2()));
                }, 
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Anek Bangla',
                    fontSize: 20,
                    color: Colors.yellow[900]
                    ),
                    textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 8,
                  padding: EdgeInsets.all(10),
                  side: BorderSide(width:2, color:Colors.white)
                ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



