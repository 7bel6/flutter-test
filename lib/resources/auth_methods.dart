import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // login in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some Error";
    try{
      if(email.isNotEmpty || password.isNotEmpty){
        //UserCredential userInfo = await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = "Success";
        if(res == "Success"){
          final user = _auth.currentUser;
          final db = await _firestore.collection("users").doc(user?.uid).get();
          final resNum = db.data()?["rank"];
          res = resNum.toString();
          // here I return the rank of the user so I can use it in the app
        }
      }
      else {
        res = "Please fill all fields";
      }
    } catch(e){
      res = e.toString();
    }
    return res;
  }
}
