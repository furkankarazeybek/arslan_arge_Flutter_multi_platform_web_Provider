import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/detail/detail_page.dart';
import 'package:provider/provider.dart';
import '../../../../configs/space.dart';
import '../detail/detail_page_desktop.dart';
import '../models/product_model.dart';
import '../provider/products_provider.dart';

class FeedsProducts extends StatelessWidget {


  final int index;

  FeedsProducts({required this.index});




  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;

    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 180,
        width: 180,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(index: index)));

            },
          child: Card(

          color: Color.fromARGB(255, 4, 12, 24),
          elevation: 8,
          shadowColor: Colors.amber,

          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey, width: 3),
            borderRadius: BorderRadius.circular(5)
          ),


          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    image: AssetImage(
                      _productList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Expanded(
                child: Text(
                  _productList[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
         ),
        ),
       ),
      ),
    );
  }
}
