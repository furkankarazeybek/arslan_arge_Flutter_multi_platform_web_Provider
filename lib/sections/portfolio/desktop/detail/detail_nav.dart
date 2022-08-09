import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/sections/home/home.dart';
import 'package:arslan_arge_flutter_web/sections/main/main_section.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/detail/detail_nav_utils.dart';
import 'package:provider/provider.dart';
import 'package:arslan_arge_flutter_web/animations/entrance_fader.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/provider/app_provider.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/widget/navbar_actions_button.dart';
import 'package:arslan_arge_flutter_web/widget/navbar_logo.dart';

import 'package:universal_html/html.dart' as html;

import '../../../../constants.dart';


class DetailNav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: Space.all(),
      color: Color.fromARGB(255, 4, 12, 24),
      child: Row(
        children: [
          const NavBarLogo(),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage()));

              },
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  'ANASAYFA',
                  style: AppText.l1b,
                ),
              ),
            ),
          ),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              color : Color(0xFFFF4820),
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),

              onPressed: () => openURL(
                  "https://api.whatsapp.com/send?phone=905544143231&text=Arslan%20Arge%20yetkili%20hatt%C4%B1na%20mesaj%20atmak%20i%C3%A7in%20t%C4%B1klay%C4%B1n%C4%B1z."
              ),

              child: Padding(
                padding: Space.all(1, 0.45),
                child: Text(
                  'BİZE ULAŞIN',
                  style: AppText.l1b,
                ),
              ),
            ),
          ),
          Space.x!,
        ],
      ),
    );
  }
}
