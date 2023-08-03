import 'package:flutter/material.dart';

import '../core/manager/colors_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBar;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: ColorsManager.background,
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back_ios),
              title: const Text('profile'),
              backgroundColor: const Color(0xff110317),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(
                        right: 24, left: 24, top: 24, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 130,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 50,
                                      backgroundImage: AssetImage(
                                          'assets/images/onboarding3.png'),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.purple,
                                        ),
                                        width: 24,
                                        height: 24,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Mona Hamza',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Times New Roman',
                                    color: Color(0xFFE3F2FD),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Column(children: [
                            Row(
                              children: [
                                Icon(Icons.account_circle, color: Colors.white),
                                Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.local_shipping_outlined,
                                    color: Colors.white),
                                Text(
                                  'Shipping Address',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border_outlined,
                                    color: Colors.white),
                                Text(
                                  'My Orders',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.wallet, color: Colors.white),
                                Text(
                                  'My Wallet',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_outline,
                                    color: Colors.white),
                                Text(
                                  'Favorite',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings_outlined,
                                    color: Colors.white),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white30,
                                  size: 15,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(color: Colors.white38),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ]),
                          const Center(
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.purple,
                                fontFamily: 'Times New Roman',
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 1,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                          BottomNavigationBar(
                              backgroundColor: Colors.amber,
                              items: [
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.home_outlined),
                                  label: 'Home',
                                ),
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.category_outlined),
                                  label: 'Categories',
                                ),
                                BottomNavigationBarItem(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  label: 'Cart',
                                ),
                              ]),
                        ])))));
  }
}
