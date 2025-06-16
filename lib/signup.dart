import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Create \nyour account',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'ProductSans-b',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
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
                    hintText: 'Email Address',
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
                    hintText: 'Password',
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
                SizedBox(height: 50),
                Center(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ButtonForm(title: 'SIGN UP'),
                        SizedBox(height: 30),
                        Text(
                          'or signup with',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'ProductSans',
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: FaIcon(
                                FontAwesomeIcons.apple,
                                size: 40,
                                color: Color(0xff2D201C),
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 30,
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                size: 40,
                                color: Color(0xff2D201C),
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 30,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 40,
                                color: Color(0xff2D201C),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text('Already have an account? Login', style: TextStyle(fontFamily: 'ProductSans', fontSize: 14),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
