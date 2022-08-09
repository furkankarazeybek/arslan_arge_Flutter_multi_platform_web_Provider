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

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nHakkımızda',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: '',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.hi,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
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
          Align(
            alignment: Alignment.center,
            child: Text(
              'Ekibimiz',
              style: AppText.l1!.copyWith(
                fontSize: 25,
                color: AppTheme.c!.primary,
              ),
            ),
          ),

          Column(
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
          Space.y!,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
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
                      'İletişim',
                      style: AppText.l1b,
                    ),
                  ),
                ),
              ),
              Space.x!,
              Container(
                width: width * 0.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[900]!,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: WorkUtils.logos
                            .asMap()
                            .entries
                            .map(
                              (e) => CommunityIconBtn(
                                icon: e.value,
                                link: WorkUtils.communityLinks[e.key],
                                height: WorkUtils.communityLogoHeight[e.key],
                              ),
                            )
                            .toList()),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
