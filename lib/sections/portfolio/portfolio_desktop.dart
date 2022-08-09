import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/constants.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/screens/feeds_screen.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/screens/feeds_screen_desktop.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'desktop/models/product_model.dart';
import 'desktop/provider/products_provider.dart';
import 'desktop/widgets/products.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;
    return Container(
      color: Colors.black,
      padding: Space.h!,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:30),
              child: GradientText(
                    "Ürünlerimiz",
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


        Container(

        child: Column(
          children: [
            Container(
              height: 280,
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductItem(
                      index: index,
                    ),
                    separatorBuilder: (_, index) => SizedBox(
                      width: 8,
                    ),
                    itemCount: _productList.length),
              ),
            )
          ],
        ),
    ),
            Space.y2!,
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
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FeedsScreen()));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'TÜMÜNÜ GÖR',
          style: AppText.l1b,
              ),
             ),
            ),

           )
          ],
        ),
      ),
    );
  }
}
//                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FeedsScreen()));
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}