import 'package:flutter/material.dart';
import 'package:veloute_app/core/manager/colors_manager.dart';

void main() {
  runApp(const MaterialApp(
    home: EditProfileScreen(),
  ));
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: ColorsManager.background,
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back_ios),
              title: const Text('Edit profile'),
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
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/images/onboarding3.png'),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
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
                    const Text(
                      'Full Name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1,
                        wordSpacing: 1,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'full name',
                        labelText: 'Enter your full name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Color(0xFFE3F2FD),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black),
                      cursorColor: Color(0xff8B499F),
                      cursorWidth: 2.0,
                      cursorRadius: Radius.circular(5),
                      maxLines: 1,
                      maxLength: 100,
                      enabled: false,
                      autofocus: false,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Text(
                      'Email Address',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1,
                        wordSpacing: 1,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        labelText: 'Enter your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        filled: true,
                        fillColor: Color(0xFFE3F2FD),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.black),
                      cursorColor: Color(0xff8B499F),
                      cursorWidth: 2.0,
                      cursorRadius: Radius.circular(5),
                      maxLines: 1,
                      maxLength: 100,
                    ),
                     const SizedBox(
                       height: 200,
                     ),
                    
                    SizedBox(
                        width: double.infinity,
                        height: 53,
                        child: TextButton(
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'Edit',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Times New Roman',
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff8B499F)),

                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            overlayColor: MaterialStateProperty.all(const Color(
                                0xff8B499F)), // When the button is pressed
                          ),
                        )
                        )
                  ],
                ),
              ),
            )
            )
            );
  }
}
