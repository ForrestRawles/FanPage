import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  var _email TextEditController();
  var _password TextEditController();
  var _display TextEditController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    Center(
        child: Column(
            children: [
              TextFormField(
                controller: _display,
                validator: (Sring? value),
              ),
              TextFormField(),
              TextFormField(
                  controller: _password,
                  obscureText: true,
                  validator: (String? value){
                    if(value == null) {
                      return "Passwords cannot be empty";
                    } else if (value.length < 8){
                      return "Your Password must be 8 Characters Long";
                    }
                  }
              ),
              ElevatedButton(onPressed: () {
                if(_formkey.currentstate)
              }, child: const Text("Login")),
        ElevatedButton(onPressed: () {
          if(_formkey.currentstate)
        },
            ]
        )
    ));

    void _register(BuildContext context) async {
      try {
        await _auth.signInWithEmailAndPassword(
            email: _email.text,
            password: _password.text
        ),

        ScaffoldMessenger.of(context).clearSnackBars();
      } on FirebaseException catch(e) {
        if(e.code == 'email-already-in-use')
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("No User was Found for that Email")));
      }else if (e.code == 'weak.password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This email is too insecure to be used for this account")))
      }
      return;
    }

    try {
      await _db.collection("users").doc(_auth.currentUser!.uid).set(
        "display_name": _display.text,
        "email": _email.text
      ) on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(e.message ?? "Unknown Error")));
    }
    }
  }
  void _login(BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: _email.text,
          password: _password.text
      ),

    ScaffoldMessenger.of(context).clearSnackBars();
    } on FirebaseException catch(e) {
    if(e.code == 'use-not-found')
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("No User Found for that Email")));
    }else if (e.code == 'wrong.password') {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("Email or Password is Incorrect")));
    }
    return;
  }

  try {
  await _db.collection("users").doc(_auth.currentUser!.uid).set(
  "display_name": _display.text,
  "email": _email.text
  ) on FirebaseException catch (e) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  content: Text(e.message ?? "Unknown Error")));
  }
  }
}



}
*/