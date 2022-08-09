import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../../configs/space.dart';
import '../detail/detail_page.dart';
import '../detail/detail_page_desktop.dart';
import '../models/product_model.dart';
import '../provider/products_provider.dart';


class ProductItem extends StatelessWidget {


  final int index;
  const ProductItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(index:index)));
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

              Container(
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
              SizedBox(height: 2,),
              Text(
                _productList[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
              Text(
                _productList[index].ProductCategoryName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}