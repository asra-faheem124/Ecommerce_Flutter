import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'GemStore',
            style: TextStyle(fontSize: 20, fontFamily: 'ProductSans-b'),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            SizedBox(height: 20,),
            TabBar(
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                 child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff2D201C),
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.woman, size: 30,)),
                  Text('Women')
                  ],
                 ),
                ),
                 Tab(
                  icon: CircleAvatar(
                    backgroundColor: Color(0xff2D201C),
                    radius: 30,
                    child: Icon(
                      Icons.man,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                 Tab(
                  icon: CircleAvatar(
                    backgroundColor: Color(0xff2D201C),
                    radius: 30,
                    child: Icon(
                      Icons.design_services,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                 Tab(
                  icon: CircleAvatar(
                    backgroundColor: Color(0xff2D201C),
                    radius: 30,
                    child: Icon(
                      Icons.auto_awesome_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
