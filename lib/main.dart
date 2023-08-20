import 'package:commercymyprofilescreen/help_center_screen.dart';
import 'package:commercymyprofilescreen/random_emoji.dart';
import 'package:flutter/material.dart';

import 'my_account_screen.dart';
import 'notification_screen.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  RandomEmojiGenerator random = RandomEmojiGenerator();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var emoji = random.getRandomEmoji();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile screen'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text(' My \n Profile  $emoji',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    height: 1.75,
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 85, left: 40),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.4),
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85, left: 35),
                  child: Container(
                    width: 154.0,
                    height: 154.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 182, 80, 200),
                        width: 6.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 75,
                        foregroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 85, left: 40),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.4),
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: ImageIcon(
                        AssetImage('assets/icons/profilepage/arrows.png'),
                        size: 24,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 25),
                child: Text(
                  'Kristen Stewart',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        child: Builder(builder: (context) {
                          return ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xfff5f5f5))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return MyAccountScreen();
                                },
                              ));
                            },
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                      'assets/icons/profilepage/iconperson1big.png'),
                                  size: 24,
                                  color: Color.fromARGB(255, 182, 80, 200),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Account Information',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 15),
                        child: Builder(
                          builder: (BuildContext context) {
                            return ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xfff5f5f5)),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return NotificationScreen();
                                  },
                                ));
                              },
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                        'assets/icons/profilepage/iconnotif.png'),
                                    size: 24,
                                    color: Color.fromARGB(255, 182, 80, 200),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    ' Notification',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 15),
                        child: Builder(
                          builder: (BuildContext context) {
                            return ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xfff5f5f5),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return HelpCenterScreen();
                                  },
                                ));
                              },
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                        'assets/icons/profilepage/iconhelp.png'),
                                    size: 24,
                                    color: Color.fromARGB(255, 182, 80, 200),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    ' Help Center',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RandomEmojiWidget extends StatefulWidget {
  @override
  _RandomEmojiWidgetState createState() => _RandomEmojiWidgetState();
}

class _RandomEmojiWidgetState extends State<RandomEmojiWidget> {
  final RandomEmojiGenerator emojiGenerator = RandomEmojiGenerator();
  String randomEmoji = '';

  @override
  void initState() {
    super.initState();
    generateRandomEmoji();
  }

  void generateRandomEmoji() {
    setState(() {
      randomEmoji = emojiGenerator.getRandomEmoji();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            randomEmoji,
            style: TextStyle(fontSize: 64),
          ),
        ],
      ),
    );
  }
}
