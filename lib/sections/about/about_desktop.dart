import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/constants.dart';
import 'package:arslan_arge_flutter_web/utils/about_utils.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/utils/work_utils.dart';
import 'package:arslan_arge_flutter_web/widget/about_me_data.dart';
import 'package:arslan_arge_flutter_web/widget/community_button.dart';
import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:arslan_arge_flutter_web/widget/tech_widget.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.black,
      padding: Space.h,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: GradientText(
                    "Hakkımızda",
                    colors: [
                      Color.fromRGBO(174, 103, 250, 100),
                      Color.fromRGBO(244, 152, 103, 100),
                    ],
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Monrope',
                      fontSize: AppDimensions.normalize(20),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
          ),

          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.hi,
                )
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Space.y!,
                      Text(
                        'Ekibimizle Tanışın:',
                        style: AppText.l1!.copyWith(
                          fontSize: 22,
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y!,
                      Column(
                        children: kTools
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),

                      Space.y1!,
                      Row(
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(16),
                            width: AppDimensions.normalize(50),
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
                                  'İLETİŞİM',
                                  style: AppText.l1b,
                                ),
                              ),
                            ),
                          ),
                          Space.x1!,
                          Container(
                            color: Colors.grey[900]!,
                            width: AppDimensions.normalize(30),
                            height: AppDimensions.normalize(0.5),
                          ),
                          ...WorkUtils.logos.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
