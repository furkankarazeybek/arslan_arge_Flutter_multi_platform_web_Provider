import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MediaQuery.of(context).size.width >= 1000 ?
        Image.asset('assets/projects/arslanarge.png',
        width: 200,
        height: 70,
        ):
        Image.asset('assets/projects/arslanarge.png',
        width: 100,
        height: 35,
        ),
      
      ],
    );
  }
}
