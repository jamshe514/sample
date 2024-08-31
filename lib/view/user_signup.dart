import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/services.dart';

class SignUpScreen extends StatelessWidget {
  final username = TextEditingController();
  final phoneno = TextEditingController();
  final email = TextEditingController();
  final experiance = TextEditingController();
  final shopname = TextEditingController();
  final password = TextEditingController();
  Fire result = Fire();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Username',
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Enter Phone number',
                  hintText: 'Phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: phoneno,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Enter your work experience',
                  hintText: 'Experience',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: shopname,
                decoration: InputDecoration(
                  labelText: 'Enter your workshop name',
                  hintText: 'Shop name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('SIGN UP'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    String email = username.text;
    String passwords =password.text;
    print(email);
    print(password);

    User? user = await result.singnwithemailpass(email, passwords);
    if (user != null) {
      print('User is successfully created');
    } else {
      print('Some error occurred');
    }
  }
}
