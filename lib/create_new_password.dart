import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class ChangedPassword extends StatelessWidget {
  const ChangedPassword({super.key});

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
                  'Create new password',
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
                  'Your new password must be different from previously used password',
                  style: TextStyle(fontSize: 20, fontFamily: 'ProductSans-l'),
                ),
              ),
              SizedBox(height: 30,),
               TextFormField(
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    hintStyle: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Center(child: ConfirmButton())
            ],
          ),
        ),
      ),
    );
  }
}