import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List notes = [
    {
      "note":"wydad athletic club",
      "image":"wydad.jpg",
    },
     {
      "note":"Ultras Winners",
      "image":"winners.png",
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:  Text("Notes"),
        leading:Center(child: Image.asset("assets/img/2.png") ),
       
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
      Navigator.of(context).pushNamed("Add");
      },),
      body: Container(child: ListView.builder(
        itemCount:notes.length ,
        itemBuilder: (context,i){
             return Dismissible(key: Key("$i"), child:  ListNotes(
               notes: notes[i],));
        }
      )),
    );
  }
}

class ListNotes extends StatelessWidget{
  final notes;
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
  
    return Card(
      child: Row(children: [
        Expanded(
          flex: 1,

            child: Image.asset("assets/img/wydad.jpg",
              fit: BoxFit.fill,)
        ),

        Expanded(
          flex: 2,
          child: ListTile(
            title:Text("wydad",style: TextStyle(color: Colors.red,fontSize: 25),),
            subtitle: Text("${notes['note']}",style: TextStyle(fontSize: 20),) ,
            trailing: IconButton(onPressed: (){} ,icon: Icon(Icons.edit),),
          ),
        ),

      ],),
    )
    ;
  }

}
