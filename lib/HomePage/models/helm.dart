import 'package:flutter/cupertino.dart';

class Clothes {
  String title;
  String subtitle;
  double price;
  String imageURL;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes('Ladies Bag ', 'Bag', 10.00, 'assets/images/Ladies Bag.png',
          ['assets/images/Ladies Bag.png', 'assets/images/Ladies Bag.png']),
      Clothes(
          'XR2 Nexx ', 'Helm Full Face', 19.09, 'assets/images/simpson.png', [
        'assets/images/simpson.png',
        'assets/images/simpson.png',
      ]),
      Clothes('Warm Jacket', 'Jacket', 19.99, 'assets/images/Warm Jacket.png',
          ['assets/images/Warm Jacket.png', 'assets/images/Warm Jacket.png']),
      Clothes('Skincare V2', 'Skincare', 29.99, 'assets/images/skincare.jpg',
          ['assets/images/skincare.jpg', 'assets/images/skincare.jpg']),
      Clothes(
          'XR2 Nexx ', 'Helm Full Face', 19.09, 'assets/images/agvcarbon.png', [
        'assets/images/agvcarbon.png',
        'assets/images/agvcarbon.png',
      ]),
    ];
  }
}

class Helm {
  String title;
  String subtitle;
  String price;
  String imageURL;

  Helm(this.title, this.subtitle, this.price, this.imageURL);
  static List<Helm> generateHelm() {
    return [
      Helm('Swallow', 'Sandal Swallow', '\$10.99', 'assets/images/Swallow.jpg'),
      Helm(
        'Sneaker Gold',
        'Sepatu',
        '\$79.99',
        'assets/images/Sneaker Gold.jpg',
      ),
      Helm(
        'Tas Gucci',
        'Tas',
        '\$109.99',
        'assets/images/Gucci.jpeg',
      ),
      Helm('Helmet Shark Full Face', 'Helm', '\$109.99',
          'assets/images/helmig.jpg'),
      Helm(
        'Legion',
        'Laptop',
        '\$79.99',
        'assets/images/legion.png',
      ),
      Helm(
        'Realme C15',
        'Handphone',
        '\$79.99',
        'assets/images/C15.png',
      ),
    ];
  }
}
