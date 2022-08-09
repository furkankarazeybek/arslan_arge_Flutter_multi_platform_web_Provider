import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/sections/about/about.dart';
import 'package:arslan_arge_flutter_web/sections/contact/contact.dart';
import 'package:arslan_arge_flutter_web/sections/home/home.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/portfolio.dart';
import 'package:arslan_arge_flutter_web/sections/services/services.dart';
import 'package:arslan_arge_flutter_web/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/giphy.gif';
  static const String pamukkale = 'assets/pamukkale.png';


  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/",
    "https://www.instagram.com/arslan_arge/",
    "https://twitter.com/",
    "https://tr.linkedin.com/in/mustafa-arslan-856b91ab",
  ];

  static const String resume =
      'https://api.whatsapp.com/send?phone=905544143231&text=Arslan%20Arge%20yetkili%20hatt%C4%B1na%20mesaj%20atmak%20i%C3%A7in%20t%C4%B1klay%C4%B1n%C4%B1z.';

  static const String gitHub = 'https://github.com/pvtfurkan';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
