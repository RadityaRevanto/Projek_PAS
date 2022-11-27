import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/widgets/menu_button.dart';

class SearchInput extends StatelessWidget{
  @override
  Widget build(BuildContext   context){
    return Container(
      margin: EdgeInsets.only(top: 25, left:25, right: 25),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 14,
                          ),
                          Text(
                            "Dikirim ke ",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "Kudus",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Positioned(
            top: 90,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MenuButton(
                      "assets/icons/official-store.png",
                      label: "Official Store"),
                  MenuButton("assets/icons/lihat-semua.png",
                      label: "Lihat Semua"),
                  MenuButton(
                      "assets/icons/rumah-tangga.png",
                      label: "Rumah Tangga"),
                  MenuButton("assets/icons/topup.png",
                      label: "Top Up & Tagihan"),
                  MenuButton("assets/icons/elektronik.png",
                      label: "Elektronik"),
                  MenuButton("assets/icons/fashion.png",
                      label: "Fashion-Pria"),
                  MenuButton(
                      "assets/icons/rumah-tangga.png",
                      label: "Rumah Tangga"),
                  MenuButton("assets/icons/keuangan.png",
                      label: "Keuangan"),
                  /*MenuButton("assets/icons/travel.png",
                      label: "Travel & Entertainment"),*/
                  MenuButton("assets/icons/elektronik.png",
                      label: "Elektronik"),
                  MenuButton(
                      "assets/icons/komputer-dan-laptop.png",
                      label: "Komputer"),
                ],
              ),
            ),
          ),

          CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 0.95, aspectRatio: 50 / 16),
            items: [
              "assets/images/iklan3.jpg",
              "assets/images/iklan1.jpg",
              "assets/images/banner-1.webp",
              "assets/images/banner-2.webp"
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          child: Image.asset(
                            i,
                            fit: BoxFit.contain,
                          )),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuButton("assets/icons/bangga-lokal.png",
                  label: "Bangga Lokal"),
              MenuButton("assets/icons/live-shopping.png",
                  label: "Live shopping"),
              MenuButton("assets/icons/belanja-harian.png",
                  label: "Belanja Harian"),
              MenuButton("assets/icons/bayar-ditempat.png",
                  label: "Bayar di Tempat"),
            ],
          ),
        ],
      ),
    );
  }
}