import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle heading = TextStyle(
    color: Color.fromARGB(0, 255, 255, 255),
    fontFamily: 'ProductSans',
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static Color themeColor = Color(0xff2D201C);
}

class MyButton extends StatelessWidget {
  final title;
  final route;
  const MyButton({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white, width: 2)
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.9)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return route;
            }));
          },
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'ProductSans',
              fontSize: 18,
            ),
          ),
        ),
    );
  }
}

class ButtonForm extends StatelessWidget {
  final title;
  const ButtonForm({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff2D201C)),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return route;
            // }));
          },
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'ProductSans-b',
              fontSize: 16,
            ),
          ),
        ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: (){}, child: Text('Confirm',  style: TextStyle(
              color: Colors.white,
              fontFamily: 'ProductSans-b',
              fontSize: 18,
            ),))
    );
  }
}
