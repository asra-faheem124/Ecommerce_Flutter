import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                  'Verification Code',
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
                  'Please enter the verification code we sent to your email address',
                  style: TextStyle(fontSize: 20, fontFamily: 'ProductSans-l'),
                ),
              ),
              SizedBox(height: 30,),
              OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Resend in 10', style: TextStyle(fontSize: 14, fontFamily: 'ProductSans'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}