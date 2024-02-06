import 'package:flutter/material.dart';
import 'package:rafadev/functions/launch_email.dart';
import '../functions/launch_perfil.dart';

// ignore: must_be_immutable
class Mobile extends StatelessWidget {
  String githubLink = 'https://github.com/devRafaelDias';
  String instagramLink = 'https://www.instagram.com/this.rafa';
  String emailAddress = 'devrafaelferreiradias@gmail.com';
  String telegram = 'https://t.me/devrafaeldias';

  Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final larg = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Source'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF736E65),
        appBar: AppBar(
          elevation: 5,
          shadowColor: const Color(0xFF0B1215),
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: const Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0), // Ajuste conforme necessário
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rafael Dias',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30), // Ajuste conforme necessário
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    color: Color.fromRGBO(242, 114, 137, 1),
                    fontSize: 30, // Ajuste conforme necessário
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: GestureDetector(
                onTap: () {
                  lauchPerfil(githubLink);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/github.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: GestureDetector(
                onTap: () {
                  lauchPerfil(instagramLink);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/instagram.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(larg * 0.05, 40, larg * 0.05, 0),
                    decoration: const BoxDecoration(
                        color: Color(0xFF0D0D0D),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'About me',
                        style: TextStyle(
                          color: const Color(0xFFF2BBC9),
                          fontSize: larg * 0.08,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Container(
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
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(larg * 0.06, 20, larg * 0.05, 0),
                child: Text(
                  'I\'m 17 years old, I live in São Paulo, Brazil.',
                  style: TextStyle(fontSize: larg * 0.06, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(larg * 0.06, 20, larg * 0.05, 0),
                child: Text(
                  'I\'m a technology enthusiast.\nCurrently working in web and mobile development.',
                  style: TextStyle(fontSize: larg * 0.06, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 60, 50, 0),
                    child: Text(
                      'Technologies',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: larg * 0.08,
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
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 15, 20),
                  width: larg * 0.8,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF0D0D0D),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      runSpacing: 40,
                      direction: Axis.horizontal,
                      children: [
                        Image.asset(
                          'assets/images/tech_Icons/html.png',
                          width: larg * 0.2,
                        ),
                        Image.asset(
                          'assets/images/tech_Icons/css.png',
                          width: larg * 0.2,
                        ),
                        Image.asset(
                          'assets/images/tech_Icons/mysql.png',
                          width: larg * 0.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/tech_Icons/git.png',
                            width: larg * 0.12,
                          ),
                        ),
                        Image.asset(
                          'assets/images/tech_Icons/dart.png',
                          width: larg * 0.2,
                        ),
                        Image.asset(
                          'assets/images/tech_Icons/flutter.png',
                          width: larg * 0.2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(larg * 0.05, 40, larg * 0.05, 20),
                decoration: const BoxDecoration(
                    color: Color(0xFF0D0D0D),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: const Color(0xFFF2BBC9),
                      fontSize: larg * 0.06,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () => launchEmail(emailAddress),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/e-mail.png',
                            width: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SelectableText(
                              emailAddress,
                              style: TextStyle(
                                  color: Colors.white, fontSize: larg * 0.04),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () => lauchPerfil(telegram),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/telegrama.png',
                            width: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SelectableText(
                              't.me/devrafaeldias',
                              style: TextStyle(
                                  color: Colors.white, fontSize: larg * 0.04),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Powered by Rafael Dias',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: larg * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
