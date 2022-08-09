import 'package:flutter/foundation.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/utils/about_utils.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/utils/work_utils.dart';

import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/constants.dart';
import 'package:arslan_arge_flutter_web/widget/about_me_data.dart';
import 'package:arslan_arge_flutter_web/widget/community_button.dart';
import 'package:arslan_arge_flutter_web/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:30),
              child: const CustomSectionHeading(
                text: '\nHakkımızda',
              ),
            ),

            Space.y1!,
            Image.asset(
              StaticUtils.hi,
              height: height * 0.27,
            ),
            SizedBox(
              height: height * 0.011,
            ),

            Space.y1!,
            Text(
              AboutUtils.aboutMeHeadline,
              style: AppText.b2b!.copyWith(
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              AboutUtils.aboutMeDetail,
              style: AppText.l1!.copyWith(
                height: 2,
                letterSpacing: 1.1,
                fontFamily: 'Montserrat',
              ),
            ),
            Space.y!,
            Divider(
              color: Colors.grey[800],
              thickness: AppDimensions.normalize(0.5),
            ),
            Space.y!,
            Text(
              'Ekibimiz',
              style: AppText.l1!.copyWith(
                fontSize: 25,
                color: AppTheme.c!.primary,
              ),
            ),
            Space.y!,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: kTools
                  .map(
                    (e) => ToolTechWidget(techName: e),
                  )
                  .toList(),
            ),
            Space.y!,
            Divider(
              color: Colors.grey[800],
              thickness: AppDimensions.normalize(0.5),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            Space.y!,
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: AppDimensions.normalize(21),
                width: AppDimensions.normalize(80),
                child: MaterialButton(

                  color : Color(0xFFFF4820),
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: AppTheme.c!.primary!,
                    ),
                  ),
                  onPressed: () {
                    html.window.open(
                      StaticUtils.resume,
                      "whatsapp",
                    );
                  },
                  child: Padding(
                    padding: Space.all(1, 0.45),
                    child: Text(
                      'BİZE ULAŞIN',
                      style: AppText.l1b,
                    ),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
