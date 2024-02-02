import 'package:flutter/material.dart';

class DeskTop extends StatelessWidget {
  const DeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Source'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF736E65),
        appBar: AppBar(
          toolbarHeight: 180,
          elevation: 5,
          shadowColor: Color(0xFFF27289),
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Rafael Dias',
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    color: Color.fromRGBO(242, 114, 137, 1),
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/github.png',
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'devRafaelDias',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/instagram.png',
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'this.rafa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
