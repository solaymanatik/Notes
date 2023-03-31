import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    )
                  ),
                ),
                SizedBox(height: 20,),
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
                Container(
                     margin: EdgeInsets.all(15),
                  child: Row(children: [
                   Text("If you haven't account",style: TextStyle(fontSize: 20),),
                   InkWell( onTap: (){
                    Navigator.of(context).pushNamed("Signup");
                   },
                    child: Text(" Click Here",
                   style: TextStyle(color: Colors.blue,fontSize: 20),),)
                ],),),
                SizedBox(height: 20,),
                Container(child: MaterialButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed("Notes");

                }, child: Text("Login",style: TextStyle(fontSize: 20),),
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
