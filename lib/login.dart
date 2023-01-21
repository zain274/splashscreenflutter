import 'package:flutter/material.dart';
import 'package:firstpraticeproject/homeview.dart';
import 'package:firstpraticeproject/utils/color_constants.dart';
import '../utils/text_constants.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var errorText = '';
  login() {
    if (email.text == 'admin@gmail.com' && password.text == '123') {
      print("Login Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    } else {
      errorText = 'Login failed';
      print("Login failed");
    }
  }
  @override
  bool ischeck=false;
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
 body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

Image.asset("assets/loginscreen.jpeg",
width: MediaQuery.of(context).size.width*0.2,
height: MediaQuery.of(context).size.height*0.2,
),
    SizedBox(height: 20,),
    Text("Login to  Your Account",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10,),
  
          
          TextField(
            controller: email,
            obscureText: false,
            decoration:  InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22)
              ),
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',


            ),
          ),


           TextField(
            controller: password,
            obscureText: true,
            decoration:  InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(22) 

              ),
                  prefixIcon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.visibility_off_rounded),
              labelText: 'Password',
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
              
              value: ischeck,
              
               onChanged: (val)
               
            {
              setState(() {
                ischeck=val!;
              });
              
            }
            
            
            ),
          ),
        
          
 Text("Remember me"),
          
          ElevatedButton(
            onPressed: () {
              login();
            },
            child: Text(TextConstants.loginText),
          ),
          Text(
            errorText,
            style: TextStyle(fontSize: 35, color: ColorConstants.errorCollor),
          )
        ],
      ),
    );
  }
}