import 'package:arslan_arge_flutter_web/sections/portfolio/portfolio_mobile.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/responsive/responsive.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/portfolio_desktop.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
