import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/responsive/responsive.dart';
import 'package:arslan_arge_flutter_web/sections/contact/contact_desktop.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/detail/detail_page_desktop.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/detail/detail_page_mobile.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../provider/products_provider.dart';

class DetailPage extends StatelessWidget {

  final int index;
  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;

    return  Responsive(
      mobile: DetailPageMobile(index: index),
      tablet: DetailPageMobile(index: index),
      desktop: DetailPageDesktop(index: index),
    );
  }
}