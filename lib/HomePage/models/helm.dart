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
          32.30,
          'assets/images/helmig.jpg',
          ['assets/images/helmig.jpg', 'assets/images/helmig.jpg']),
      Clothes(
          'XR2 Nexx ',
          'Helm Full Face',
          19.09,
          'assets/images/simpson.png',
          [ 'assets/images/simpson.png',  'assets/images/simpson.png',]),
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
      Clothes(
          'XR2 Nexx ',
          'Helm Full Face',
          19.09,
          'assets/images/agvcarbon.png',
          [ 'assets/images/agvcarbon.png',  'assets/images/agvcarbon.png',]),
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
          'assets/images/agvcarbon.png',
          ['assets/images/agvcarbon.png', 'assets/images/agvcarbon.png']),
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
          'assets/images/kyt1.png',
          [ 'assets/images/kyt1.png',  'assets/images/kyt1.png']),
      Helm(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/hjc.png',
          ['assets/images/hjc.png', 'assets/images/hjc.png']),
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
          'assets/images/helmig2.jpg',
          ['assets/images/helmig2.jpg', 'assets/images/helmig2.jpg']),
    ];
  }
}









