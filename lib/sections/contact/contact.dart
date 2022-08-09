import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/responsive/responsive.dart';
import 'package:arslan_arge_flutter_web/sections/contact/contact_desktop.dart';
import 'package:arslan_arge_flutter_web/sections/contact/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
