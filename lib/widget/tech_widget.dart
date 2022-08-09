import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/app_dimensions.dart';
import 'package:arslan_arge_flutter_web/configs/app_theme.dart';
import 'package:arslan_arge_flutter_web/configs/app_typography.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key? key, required this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Icon(
          Icons.play_arrow,
          color: AppTheme.c!.primary,
          size: AppDimensions.normalize(6),
        ),
        Text(
          " $techName ",
          style: TextStyle(
            fontSize:size.height*0.020,
          ),
        ),
      ],
    );
  }
}
