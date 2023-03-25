import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authmethods{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore=FirebaseFirestore.instance;
  Future<String>Signup({
    required String email,
    required String password,
    required String rollno,
    required String name,
  }) async {
    String res ="Some Error Occurred";
    try{
      if(email.isNotEmpty||password.isNotEmpty){
        UserCredential cred = await auth.createUserWithEmailAndPassword(email: email, password: password,);
        await firestore.collection('Students').doc(cred.user!.uid).set({
          'email':email,
          'password':password,
          'rollno': rollno,
          'name': name,
        });

        res ="Success";
      }
    }
    catch(err)
    {
      res=err.toString();
    }
    return res;


  }



}

