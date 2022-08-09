import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/app_dimensions.dart';
import 'package:arslan_arge_flutter_web/utils/contact_utils.dart';
import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:arslan_arge_flutter_web/widget/project_card.dart';

import '../../configs/space.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nİletişim",
        ),
        const CustomSectionHeading(
          text: "Bilgilerimiz",
        ),
        Space.y!,

        const CustomSectionSubHeading(
          text: "Projelerinize yardım almak için bizi arayın.\n\n",
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectIconData: ContactUtils.contactIcon[i],
              projectTitle: ContactUtils.titles[i],
              projectDescription: ContactUtils.details[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(120),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
