import 'package:commercymyprofilescreen/main.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: GradientAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 40, right: 35),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  labelText: 'Kristen Stewart',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'GoogleSans',
                  )),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 35),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.female,
                    color: Colors.purple,
                  ),
                  labelText: 'Female',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'GoogleSans',
                  )),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 35),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Colors.purple,
                  ),
                  labelText: 'kristenstewart1@gmail.com',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'GoogleSans',
                  )),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 35),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  labelText: '+994 50 999 99 99',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'GoogleSans',
                  )),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 35),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.location_pin,
                    color: Colors.purple,
                  ),
                  labelText: 'Azerbaijan, Baku',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'GoogleSans',
                  )),
              readOnly: true,
            ),
          ),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF8E24AA), Color(0xFF6A1B9A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(100.0),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 130,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80', // Replace with your image URL
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
