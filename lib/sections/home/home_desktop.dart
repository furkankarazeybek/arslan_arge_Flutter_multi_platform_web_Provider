import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/animations/entrance_fader.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 4, 12, 24),
      height: size.height * 1.30,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 200,
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
                      ? size.height * 0.8
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Arslan Arge Elektrik Mak. San. Tic. Ltd. Şti.',
                        style:
                         AppText.b1!.copyWith(
                          fontFamily: 'Montserrat',
                          color: Colors.white
                        ),
                      ),
                     
                    ],
                  ),
                  Space.y1!,
                  GradientText(
                    "Teknoloji, donanım",
                    colors: [
                      Color.fromRGBO(174, 103, 250, 100),
                      Color.fromRGBO(244, 152, 103, 100),
                    ],
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Monrope',
                      fontSize: size.width*0.04,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  GradientText(
                    "ve yazılımın sizin için",
                    colors: [
                      Color.fromRGBO(174, 103, 250, 100),
                      Color.fromRGBO(244, 152, 103, 100),
                    ],
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Monrope',
                      fontSize: size.width*0.04,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  GradientText(
                    "çalışmasını sağlıyoruz.",
                    colors: [
                      Color.fromRGBO(174, 103, 250, 100),
                      Color.fromRGBO(244, 152, 103, 100),
                    ],
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Monrope',
                      fontSize: size.width*0.04,
                      fontWeight: FontWeight.w800,
                    ),
                  ),



                  SizedBox(height: 50,),
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
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
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
                              'IOT Cihaz Geliştirme',
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
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
                              '3D Modelleme',
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
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
                              'İndiksiyon Isıtma Makineleri',
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
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
                              'Endüstriyel Otomasyon',
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
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
                              'Veritabanı/API Geliştirme',
                              speed: const Duration(milliseconds: 100),
                              textStyle: TextStyle(
                                  fontSize: size.width*0.015,
                                  color: Colors.white),
                            ),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ],
                    ),
                  ),
                  Space.y2!,
                  const SocialLinks(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
