import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/configs/configs.dart';
import 'package:arslan_arge_flutter_web/constants.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/screens/feeds_screen.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/portfolio_desktop.dart';
import 'package:arslan_arge_flutter_web/utils/project_utils.dart';
import 'package:arslan_arge_flutter_web/utils/utils.dart';
import 'package:arslan_arge_flutter_web/widget/custom_text_heading.dart';
import 'package:arslan_arge_flutter_web/widget/project_card.dart';
import 'package:provider/provider.dart';

import 'desktop/models/product_model.dart';
import 'desktop/provider/products_provider.dart';
import 'desktop/screens/feeds_screen_desktop.dart';
import 'desktop/widgets/products.dart';

class PortfolioMobileTab extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Space.y!,
        Space.y!,

        Padding(
          padding: const EdgeInsets.only(top:30),
          child: const CustomSectionHeading(
            text: "\Ürünlerimiz",
          ),
        ),
        Space.y!,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: const CustomSectionSubHeading(
            text: "",
          ),
        ),
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
                  width: 15,
                ),
                itemCount: _productList.length),
          ),
        ),
        Space.y!,
        Space.y!,

        SizedBox(

          height: AppDimensions.normalize(21),
          width: AppDimensions.normalize(80),
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
              padding: EdgeInsets.all(5),
              child: Text(
                'TÜMÜNÜ GÖSTER',
                style: AppText.l1b,
              ),
            ),
          ),
        ),
        Space.y!,
        Divider(
          color: Colors.grey[800],
          thickness: AppDimensions.normalize(0.5),
        ),
      ],
    );
  }
}
