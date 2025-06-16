import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: Container(
          width: 370,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'ProductSans-b',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter email associated with your account and we’ll send and email with intructions to reset your password',
                  style: TextStyle(fontSize: 20, fontFamily: 'ProductSans-l'),
                ),
              ),
              SizedBox(height: 30,),
               TextFormField(
                keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'enter your email here',
                    hintStyle: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
