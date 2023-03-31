import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: Image.asset("assets/img/icons.png")),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    )
                  ),
                ),
                SizedBox(height: 15,),
                 TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    )
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                      )
                  ),
                ),
                  SizedBox(height: 15,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      hintText: "confirm password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                      )
                  ),
                ),
                Container(
                     margin: EdgeInsets.all(15),
                  child: Row(children: [
                   Text("If you have account",style: TextStyle(fontSize: 20),),
                   InkWell( onTap: (){
                     Navigator.of(context).pushNamed("Home");
                   },
                    child: Text(" Click Here",
                   style: TextStyle(color: Colors.blue,fontSize: 20),),)
                ],),),
                SizedBox(height: 15,),
                Container(child: MaterialButton(onPressed: (){

                }, child: Text("Create new account",style: TextStyle(fontSize: 20),),
                color: Colors.blue,
                textColor: Colors.white,)

                )
              ],
            )),
          )
        ],
      )
      

    );
  }
}