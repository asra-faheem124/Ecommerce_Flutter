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
            SizedBox(height: 20),
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
                      child: Icon(Icons.woman, size: 30, color: Colors.white),
                    ),
                  ),
                  text: 'Women',
                ),
                Tab(
                  height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppStyles.themeColor,
                      child: Icon(Icons.man, size: 30, color: Colors.white),
                    ),
                  ),
                  text: 'Men',
                ),
                Tab(
                  height: 70,
                  icon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppStyles.themeColor,
                      child: Icon(
                        Icons.design_services,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  text: 'Design',
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
                  text: 'Beauty',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Container(
                            height: 200,
                            width: 340,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/home_banner.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                top: 10,
                              ),
                              child: Text(
                                'Autumn \nCollection \n2025',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'ProductSans-b',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          MySection(
                            heading: 'Featured Products',
                            button: 'Show all',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  MyCard(
                                    image: 'assets/images/feature-1.png',
                                    title: 'Turtleneck Sweater',
                                    price: '\$39.99',
                                  ),
                                  SizedBox(width: 20,),
                                  MyCard(
                                    image: 'assets/images/feature-2.png',
                                    title: 'Long Sleeve Dress',
                                    price: '\$40.00',
                                  ),
                                  SizedBox(width: 20,),
                                  MyCard(
                                    image: 'assets/images/feature-3.png',
                                    title: 'Sportswear Set',
                                    price: '\$55.00',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            height: 171,
                            color: Color(0xffF8F8FA),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '| New Collection',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'ProductSans-l',
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'HANG OUT \n& PARTY',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'ProductSans-l',
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset('assets/images/home_banner2.png'),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          MySection(heading: 'Recommended', button: 'Show all'),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 213,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF9F9F9),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                           ClipRRect(
                                            borderRadius: BorderRadiusGeometry.circular(10),
                                            child:  Image.asset(
                                              'assets/images/recom-1.png',
                                            ),
                                           )
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'White Fashion Hoodie',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'ProductSans',
                                              ),
                                            ),
                                            Text(
                                              '\$29.00',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'ProductSans-b',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    width: 213,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF9F9F9),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            ClipRRect(
                                            borderRadius: BorderRadiusGeometry.circular(10),
                                            child:  Image.asset(
                                              'assets/images/recom-2.png',
                                            ),
                                           )
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Cotton T-shirt',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'ProductSans',
                                              ),
                                            ),
                                            Text(
                                              '\$29.00',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'ProductSans-b',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Text('second')),
                  Expanded(child: Text('third')),
                  Expanded(child: Text('fourth')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
