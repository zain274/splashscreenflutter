import 'dart:async';

import 'package:firstpraticeproject/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 5), (){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login(),),);
    });
  }
  Widget build(BuildContext context) {

    return Scaffold(
     

//       body: Center(
//         child: Padding(nst EdgeInsets.only(top:60.0),
          
//           padding: cochild: 
          
//           Column(
               
// ,
//             children: [
// Image.asset("assets/screen.JPEG"

// ),
// const Text("Let You In"),
//             ],
          
//           ),
//         ),
//       )



// 


// body: Column(
//   children: [
//     Container(
//       margin: EdgeInsets.only(top:20),
//       padding: EdgeInsets.all(20),
// child: 

// Icon(Icons.arrow_back),
  

//     ),
//     Container(
// child: Column(
//       children: [
//         CircleAvatar(backgroundImage: AssetImage("assets/splashscreen.JPEG"),
//         radius: 50,
//         ),
        
//       ])
//     ),
//   ]),




    // Container(
    //  
    //  ),
      
    // ),
    

    body:Center(

      child: Column(
        children: [
          Container(
            
            margin: EdgeInsets.only(top: 70),
            
            child:
            
           Image.asset("assets/screen.jpeg",
        
         
           ) , 
            ),
          
          SizedBox(height: 30,),
          Container(
            child: const Text("Let's  You in",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
           

          ),
           SizedBox(height: 20,),
           Container(
            child: Column(children: [
              OutlinedButton.icon(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook), label: Text("Continue with facebook")),
              SizedBox(height: 20,),
                            OutlinedButton.icon(onPressed: (){}, icon: Icon(FontAwesomeIcons.google), label: Text("Continue with google")),

                            SizedBox(height: 20,),

                           OutlinedButton.icon(onPressed: (){}, icon: Icon(FontAwesomeIcons.apple),  label: Text("Continue with Apple"),
                           
                           ),


            ],),
           ),
        ],
        
      ),
    ),
 
    );
  }
}

