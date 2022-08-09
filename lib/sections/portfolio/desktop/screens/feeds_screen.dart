import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/screens/feeds_screen_desktop.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/screens/feeds_screen_mobile.dart';

import '../../../../responsive/responsive.dart';

class FeedsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: FeedsScreenMobile(),
      tablet: FeedsScreenMobile(),
      desktop: FeedsScreenDesktop(),
    );
  }

}
