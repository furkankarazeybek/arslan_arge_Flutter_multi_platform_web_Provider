import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../provider/products_provider.dart';
import '../widgets/feeds_products.dart';

class FeedsScreenMobile extends StatefulWidget {


  @override
  _FeedsScreenMobileState createState() => _FeedsScreenMobileState();
}

class _FeedsScreenMobileState extends State<FeedsScreenMobile> {


  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);
    List<Product> productList = _productsProvider.products;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
            color: Colors.white
        ),
        title: Text("Tüm Ürünler",
          style: TextStyle(
            color: Colors.white,
          ),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: 240/350,
        children:  List.generate(productList.length, (index) =>  FeedsProducts(
          index: index,
        ),
        ),
      ),
    );
  }
}
