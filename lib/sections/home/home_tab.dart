import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/animations/entrance_fader.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';

import 'package:arslan_arge_flutter_web/widget/social_links.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

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
              bottom: 0,
              right: 0,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    StaticUtils.blackWhitePhoto,
                    height: size.width < 1200
                        ? size.height * 0.75
                        : size.height * 0.85,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                AppDimensions.normalize(30),
                AppDimensions.normalize(50),
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Arslan Arge Elektrik Mak. San. Tic. Ltd. Şti.",
                        style: AppText.b2!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  Space.y1!,

                  Text(
                    "Teknoloji, Donanım ve",
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
                  Space.y1!,
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
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
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),
                  Space.y2!,
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
