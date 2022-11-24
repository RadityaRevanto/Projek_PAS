import 'package:flutter/cupertino.dart';

class Clothes {
  String title;
  String subtitle;
  double price;
  String imageURL;
  List<String> detailUrl;



  Clothes(this.title, this.subtitle,  this.price, this.imageURL, this.detailUrl);
  static List <Clothes> generateClothes() {
    return [
      Clothes(
          'Helmet Shark ',
          'Helm Full Face',
          79.99,
          'assets/images/helmig.jpg',
          ['assets/images/helmig.jpg', 'assets/images/helmig.jpg']),
      Clothes(
          'Locatelli Pro',
          'Helm  Full Face',
          39.99,
          'assets/images/helmig2.jpg',
          ['assets/images/helmig2.jpg', 'assets/images/helmig2.jpg']),
      Clothes(
          'XR2 Nexx ',
          'Helm Full Face',
          39.99,
          'assets/images/agv.jpg',
          ['assets/images/agv.jpg', 'assets/images/agv.jpg']),
    ];
  }
}

class Helm{
  String title;
  String subtitle;
  String price;
  String imageURL;
  List<String> detailUrl;

  Helm(this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);
  static List<Helm> generateHelm(){
    return [
      Helm(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/helmig.jpg',
          ['assets/images/helmig.jpg', 'assets/images/helmig.jpg']),
      Helm(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/helmig2.jpg',
          ['assets/images/helmig2.jpg', 'assets/images/helmig2.jpg']),
      Helm(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/helmig.jpg',
          ['assets/images/helmig.jpg', 'assets/images/helmig.jpg']),
      Helm(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/helmig2.jpg',
          ['assets/images/helmig2.jpg', 'assets/images/helmig2.jpg']),
    ];
  }
}









