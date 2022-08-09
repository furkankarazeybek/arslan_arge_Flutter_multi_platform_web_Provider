import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/animations/bottom_animation.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/utils/contact_utils.dart';
import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:arslan_arge_flutter_web/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 4, 12, 24),
      padding: Space.all(1, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:50),
            child: const CustomSectionHeading(
              text: "\nİletişim Adreslerimiz",
            ),
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                        child: ProjectCard(
                          projectIconData: e.value,
                          projectTitle: ContactUtils.titles[e.key],
                          projectDescription: ContactUtils.details[e.key],
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
