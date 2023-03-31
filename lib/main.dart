
import 'package:flutter/material.dart';
import 'package:notes/add.dart';
import 'package:notes/home.dart';
import 'package:notes/note.dart';
import 'package:notes/signup.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    routes: {
      "Home": (context) => Home(),
     "Signup": (context) =>  Signup(),
      "Notes": (context) =>  Notes(),
      "Add": (context) =>  AddNotes()
     },
  ));
}

