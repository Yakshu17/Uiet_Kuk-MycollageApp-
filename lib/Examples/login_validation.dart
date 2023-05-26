import 'package:admin_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login_validation extends StatefulWidget {
  @override
  _Login_validationState createState() => _Login_validationState();
}
class _Login_validationState extends State<Login_validation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<bool>login(String email,String password) async {
    try {
      final userDoc = await FirebaseFirestore.instance.collection('users').doc(email).get();
      if (userDoc.exists) {
        final storedPassword = userDoc.get('password');
        final storedEmail = userDoc.get('email');
        if (storedPassword == password && storedEmail == email) {
          return true;
        } else {
          print("Invalid password.");
        }
      } else {
        print("User does not exist.");
      }
    } catch (e) {
      print("Error: $e");
    }
    return false;
  }
  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;

      if (await login(email, password)) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home_screen(),));
        print("Login successful!");
      } else {
        print("Login failed.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed:_submitForm,
                child: Text('Login'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
