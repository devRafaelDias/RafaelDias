import 'package:url_launcher/url_launcher.dart';

void launchEmail(String email) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  String urlString = _emailLaunchUri.toString();

  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {
    throw 'Could not launch $urlString';
  }
}
