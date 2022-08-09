import 'package:flutter/widgets.dart';
import '../models/product_model.dart';

class Products with ChangeNotifier{
  List<Product> _products = [
    Product(
      id: 'Gömülü Sistem IOT Cihaz',
      title: 'Gömülü Sistem IOT Cihaz',
      description: 'Gömülü Sistem IOT Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),
    Product(
      id: 'Makine Ölçüm Cihaz',
      title: 'Makine Ölçüm IOT Cihaz',
      description: 'Makine Ölçüm Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),
    Product(
      id: 'Gömülü Sistem IOT Cihaz',
      title: 'Gömülü Sistem IOT Cihaz',
      description: 'Gömülü Sistem IOT Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),
    Product(
      id: 'Gömülü Sistem IOT Cihaz',
      title: 'Gömülü Sistem IOT Cihaz',
      description: 'Gömülü Sistem IOT Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),
    Product(
      id: 'Gömülü Sistem IOT Cihaz',
      title: 'Gömülü Sistem IOT Cihaz',
      description: 'Gömülü Sistem IOT Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),
    Product(
      id: 'Gömülü Sistem IOT Cihaz',
      title: 'Gömülü Sistem IOT Cihaz',
      description: 'Gömülü Sistem IOT Cihaz hakkındaki Gömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaGömülü Sistem IOT Cihaz hakkındaki açıklamaaçıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama Gömülü Sistem IOT Cihaz hakkındaki açıklama',
      price : 9.99,
      imageUrl: 'assets/photos/black-white.png',
      ProductCategoryName: 'Gömülü Sistem',
      quantity: 2,
    ),



  ];

  List<Product> get products {
    return _products;

  }
}