import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

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
              labelColor: AppStyles.themeColor,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              indicatorColor: AppStyles.themeColor,
              tabs: [
                Tab(
                  height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppStyles.themeColor,
                      child: Icon(
                        Icons.woman,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  text: 'Women',
                ),
                 Tab(
                  height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor:AppStyles.themeColor,
                      child: Icon(
                        Icons.man,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  text: 'Men',
                ),
                 Tab(
                  height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor:AppStyles.themeColor,
                      child: Icon(
                        Icons.design_services,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  text: 'Design'
                ),
                 Tab(
                 height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppStyles.themeColor,
                      child: Icon(
                        Icons.auto_awesome,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  text: 'Beauty'
                ),
              ],
            ),
            Expanded(child: TabBarView(children: [
              Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                     Container(
                      height: 200,
                      width: 380,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/home_banner.png'),fit: BoxFit.cover,),
                        borderRadius: BorderRadius.circular(20)  
                      ),
                     )
                    ],
                  ),
                ),
            ]))
          ],
        ),
      ),
    );
  }
}
