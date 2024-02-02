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
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
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
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: 600,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF0D0D0D),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF0D0D0D),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'About me',
                        style: TextStyle(
                          color: Color(0xFFF2BBC9),
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'I\'m 17 years old, I live in São Paulo, Brazil.',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  const Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'I\'m a technology enthusiast.\nCurrently working in web and mobile development.',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF0D0D0D),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: Color(0xFFF2BBC9),
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'devrafaelfereiradias@gmail.com',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
