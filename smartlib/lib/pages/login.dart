import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_SL extends StatefulWidget {
  const Login_SL({super.key});

  @override
  State<Login_SL> createState() => _Login_SLState();
}

class _Login_SLState extends State<Login_SL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),border: Border.all(color: Colors.black)),
              child: IconButton(onPressed: (){},icon: Icon(Icons.remove_red_eye))
              ),
          )
        ],
      ),
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.850),
          gradient:LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.teal,
              Colors.tealAccent,
              Colors.greenAccent,
              Colors.lightGreen,
              Colors.green,
              Colors.brown.shade300
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ), 
        ),
        child: Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text("LOGIN",textAlign: TextAlign.center,style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold),),
                        ),
                        TextFormField(decoration: InputDecoration(hintText: "Username",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),showCursor: false,enableSuggestions: false),
                        const SizedBox(height: 20),
                        TextFormField(obscureText: true,obscuringCharacter: "*",decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),showCursor: false,enableSuggestions: false),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){Navigator.pushNamed(context, "/home");},style: ButtonStyle(fixedSize: WidgetStateProperty.all(Size(130, 40)),backgroundColor: WidgetStateProperty.all(Colors.teal),elevation: WidgetStatePropertyAll(20), ), child: Text("Sign-In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                            TextButton(onPressed: (){Navigator.pushNamed(context, "/home");},style: ButtonStyle(fixedSize: WidgetStateProperty.all(Size(130, 40)),backgroundColor: WidgetStateProperty.all(Colors.teal),elevation: WidgetStatePropertyAll(20),), child: Text("Register-Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ],
                        )
                      ],
                    ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.875),
          gradient:LinearGradient(
            colors: [
              Colors.lightGreen,
              Colors.green,
              Colors.brown.shade300
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ), 
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text("Forget password ??",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, backgroundColor: Colors.transparent),),
        ),
      ),
    );
  }
}