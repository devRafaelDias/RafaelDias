import 'package:flutter/material.dart';
import 'package:rafadev/functions/launch_email.dart';
import '../functions/launch_perfil.dart';

// ignore: must_be_immutable
class DeskTop extends StatelessWidget {
  String githubLink = 'https://github.com/devRafaelDias';
  String instagramLink = 'https://www.instagram.com/this.rafa';
  String emailAddress = 'devrafaelferreiradias@gmail.com';

  DeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    final larg = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Source'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF736E65),
        appBar: AppBar(
          toolbarHeight: 180,
          elevation: 5,
          shadowColor: const Color(0xFFF27289),
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
                  GestureDetector(
                    onTap: () {
                      lauchPerfil(githubLink);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/github.png',
                          width: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: SelectableText(
                            'devRafaelDias',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        )
                      ],
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
                  GestureDetector(
                    onTap: () {
                      lauchPerfil(instagramLink);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/instagram.png',
                          width: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: SelectableText(
                            'this.rafa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: 600,
                width: larg * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF0D0D0D),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Web & Mobile',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 60,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Developer',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 60,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.web_sharp,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      'assets/images/perfil.jpeg',
                                      height: 200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 60, 50, 0),
                          child: Text(
                            'Technologies',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 0.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                                'assets/images/tech_Icons/html.png'),
                          ),
                          Expanded(
                            child:
                                Image.asset('assets/images/tech_Icons/css.png'),
                          ),
                          Expanded(
                            child: Image.asset(
                                'assets/images/tech_Icons/mysql.png'),
                          ),
                          Expanded(
                            child:
                                Image.asset('assets/images/tech_Icons/git.png'),
                          ),
                          Expanded(
                            child: Image.asset(
                                'assets/images/tech_Icons/dart.png'),
                          ),
                          Expanded(
                            child: Image.asset(
                                'assets/images/tech_Icons/flutter.png'),
                          ),
                        ],
                      ),
                    )
                  ],
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
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'About me',
                        style: TextStyle(
                          color: const Color(0xFFF2BBC9),
                          fontSize: larg * 0.02,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'I\'m 17 years old, I live in São Paulo, Brazil.',
                    style:
                        TextStyle(fontSize: larg * 0.015, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'I\'m a technology enthusiast.\nCurrently working in web and mobile development.',
                      style: TextStyle(
                          fontSize: larg * 0.015, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF0D0D0D),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: const Color(0xFFF2BBC9),
                          fontSize: larg * 0.02,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => launchEmail(emailAddress),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        'devrafaelferreiradias@gmail.com',
                        style: TextStyle(
                            fontSize: larg * 0.015, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Powered by Rafael Dias',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
