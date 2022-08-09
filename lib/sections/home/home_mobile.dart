import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';

import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 4, 12, 24),
      child: SizedBox(
        height: size.height * 1.02,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -AppDimensions.normalize(25),
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: AppDimensions.normalize(150),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                AppDimensions.normalize(10),
                AppDimensions.normalize(40),
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [


                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Arslan Arge Elektrik Mak.",
                          style: AppText.b2!.copyWith(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "San. Tic. Ltd. Şti.",
                          style: AppText.b2!.copyWith(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),

                      Space.x!,
                    ],
                  ),
                  Space.y!,
                  Space.y!,



                  Text(
                    "Teknoloji,",
                    style: AppText.h3!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "Donanım ve",
                    style: AppText.h3!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "Yazılım",
                    style: AppText.h3!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                    ),
                  ),

                  Space.y!,
                  Space.y!,




                  Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Gömülü Sistem Tasarımı/Yazılımı',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            'IOT Cihaz Geliştirme',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            '3D Modelleme',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            'İndiksiyon Isıtma Makineleri',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            'Endüstriyel Otomasyon',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            'Veritabanı/API Geliştirme',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        repeatForever: true,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                  Space.y!,

                  const SocialLinks(),

                ],

              ),

            ),

          ],

        ),

      ),

    );

  }
}
