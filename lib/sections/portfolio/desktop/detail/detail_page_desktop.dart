import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:arslan_arge_flutter_web/sections/portfolio/desktop/detail/detail_nav.dart';
import 'package:provider/provider.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../../configs/app_theme.dart';
import '../../../main/main_section.dart';
import '../models/product_model.dart';
import '../provider/products_provider.dart';


class DetailPageDesktop extends StatelessWidget {
  final int index;

  const DetailPageDesktop({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    final _productsProvider = Provider.of<Products>(context);
    List<Product> _productList = _productsProvider.products;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
            color: Colors.white
        ),
        title: Text(
            _productList[index].title,
          style: TextStyle(
            color: Colors.white,
          ),),
        centerTitle: true,
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
             Container(
               height: size.height*0.8,
               width: size.width*0.5,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(_productList[index].imageUrl),
                   fit: BoxFit.fitHeight,
                 ),
                 borderRadius: BorderRadius.circular(25),
               ),
             ),
               Container(
                 height: 600,
                 width: size.width *0.5,
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical:25),
                 child: SingleChildScrollView(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       EntranceFader(
                         offset: const Offset(-10, 0),
                         delay: const Duration(seconds: 1),
                         duration: const Duration(milliseconds: 800),
                         child: Row(
                           children: [
                             Icon(
                               Icons.play_arrow_rounded,
                               color: AppTheme.c!.primary!,
                             ),
                             AnimatedTextKit(
                               animatedTexts: [
                                 TyperAnimatedText(
                                   _productList[index].title,
                                   speed: const Duration(milliseconds: 50),
                                   textStyle: TextStyle(fontSize:22,
                                       color: Colors.white,
                                       fontWeight: FontWeight.bold
                                   ),
                                 ),
                               ],
                               isRepeatingAnimation: false,
                             ),
                           ],
                         ),
                       ),


                       SizedBox(height: 20,),
                       Text(_productList[index].description,
                         style: TextStyle(
                             fontSize:15,
                             fontWeight: FontWeight.w400
                         ),
                       ),
                     ],
                   ),
                 ),
               ),

             ],
           ),

          ],
        ),
      ),
    );
  }
}