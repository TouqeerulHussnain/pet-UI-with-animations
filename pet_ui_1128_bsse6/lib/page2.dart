
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class page2 extends StatefulWidget {
  const page2({ Key? key }) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pet UI'),
          actions: [
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/images/Urvish.svg',  color: Colors.amber,),
            ),
          ],
          leading: IconButton(
            onPressed: (){
              Navigator.of(context)
                  .pop();
            },
            icon: Icon(Icons.grid_view_outlined, color: Colors.amber,)
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            bottomOpacity: 0.0,
        ),
        
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Hi, Kamran",
                          style: TextStyle(
                          fontFamily: 'San',
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Good Morning',
                          style: TextStyle(
                          fontFamily: 'San',
                          fontSize: 20,
                          color: Colors.grey,
                          ),
                          textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                Row(
                    children: [
                       
                        Expanded(child: buttons('assets/images/star32.png','All'),)  ,
                        Expanded(child: buttons('assets/images/dog32.png', 'Dog'),), 
                        Expanded(child: buttons('assets/images/cat32.png', 'Cat'),) ,
                        Expanded(child: buttons('assets/images/bird32.png', 'Bird'),) 
                        
                        ],
                  ),

                Row(
                  children: [
                    Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Adopt Pet',
                        style: TextStyle(
                        fontFamily: 'San',
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left),
                    ),
                  ],
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    // this is for scrolling bar but when deploy, it does not work
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Expanded(child: Image.asset('assets/images/Group 17.png'),),
                        Expanded(child: Image.asset('assets/images/Group 18.png'),),
                        Expanded(child: Image.asset('assets/images/Group 19.png'),),
                        Expanded(child: Image.asset('assets/images/Group 20.png'),),
                        Expanded(child: Image.asset('assets/images/Group 17.png'),),
                        Expanded(child: Image.asset('assets/images/Group 18.png'),),
                      ],
                      ),

                    
                  )
                ),

                    
          ],
                
              
          ),
        ),
      )
      
    );
  }

Column buttons(location,String name) =>
   Column(
    children: [
      TextButton(
        onPressed: (){
        },
        child: Image.asset(location,color: Colors.amber),
        style: TextButton.styleFrom(
          shadowColor: Colors.black,
          elevation: 2,
          backgroundColor: Colors.white,
          side: BorderSide(width:2,color:Colors.amber),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical:20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            
          )
        ),
      )
      ,Text(name,                 
         style: TextStyle(
         fontSize: 15,
         fontWeight: FontWeight.bold,
         color: Colors.black,
         ),
         textAlign: TextAlign.center),
    ],
  );
}







// //----------------------------------Rough Thoughts-------------------------------------
// //    SHOWING IMAGES 

//                           // child: Column(
//                           //   children: [
//                           //     Expanded(
//                           //       child: Row(
//                           //         children: [
//                           //           Expanded(child: Image.asset('assets/images/Group 17.png'),),
//                           //           Expanded(child: Image.asset('assets/images/Group 18.png'),),
//                           //         ],
//                           //       ),
//                           //     ),
//                           //     Expanded(
//                           //       child: Row(
//                           //         children: [
                                    
//                           //           Expanded(child: Image.asset('assets/images/Group 19.png'),),
//                           //           Expanded(child: Image.asset('assets/images/Group 20.png'),),
//                           //         ],
//                           //       ),
//                           //     )
//                           //   ],
//                           // ),




