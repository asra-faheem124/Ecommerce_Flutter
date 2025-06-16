import 'package:ecommerce/constants.dart';
import 'package:ecommerce/signup.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset('assets/images/welcome.png', fit: BoxFit.cover),
          // Dark overlay
          Container(
            color: Colors.black.withOpacity(0.4), // Adjust opacity here
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 400,),
              Text(
                'Welcome to GemStore!',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'The home for a fashionista',
                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'ProductSans'),
              ),
              SizedBox(height: 60),
             MyButton(title: 'Get Started', route: SignUp(),)
            ],
          ),
        ],
      ),
    );
  }
}
