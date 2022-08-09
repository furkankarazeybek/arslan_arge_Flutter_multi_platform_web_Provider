import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../provider/products_provider.dart';
import '../widgets/feeds_products.dart';

class FeedsScreenDesktop extends StatefulWidget {


  @override
  _FeedsScreenDesktopState createState() => _FeedsScreenDesktopState();
}

class _FeedsScreenDesktopState extends State<FeedsScreenDesktop> {


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
      body: GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 8,
        childAspectRatio: 200/180,
        children:  List.generate(productList.length, (index) =>  FeedsProducts(
          index: index,
        ),
        ),
      ),
    );
  }
}
