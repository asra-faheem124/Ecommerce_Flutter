import 'package:flutter/material.dart';

// appstyle class
class AppStyles {
  static TextStyle heading = TextStyle(
    color: Color.fromARGB(0, 255, 255, 255),
    fontFamily: 'ProductSans',
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static Color themeColor = Color(0xff2D201C);

  static TextStyle featureHead = TextStyle(
    fontSize: 14,
    fontFamily: 'ProductSans',
  );

  static TextStyle featureText = TextStyle(
    fontSize: 14,
    fontFamily: 'ProductSans-b',
  );
}

// button
class MyButton extends StatelessWidget {
  final title;
  final route;
  const MyButton({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.withOpacity(0.9),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return route;
              },
            ),
          );
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

//button
class ButtonForm extends StatelessWidget {
  final title;
  const ButtonForm({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
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

//button
class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: () {},
        child: Text(
          'Confirm',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'ProductSans-b',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

// card
class MyCard extends StatelessWidget {
  final image;
  final title;
  final price;
  const MyCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 172,
          width: 120,
          decoration: BoxDecoration(
            color: Color(0xffE4E1E8),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 5),
        Text(title, style: AppStyles.featureHead),
        SizedBox(height: 5),
        Text(price, style: AppStyles.featureText),
      ],
    );
  }
}

//heading section
class MySection extends StatelessWidget {
  final heading;
  final button;
  const MySection({super.key, required this.heading, required this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              heading,
              style: TextStyle(fontSize: 20, fontFamily: 'ProductSans-b'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              button,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProductSans',
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
