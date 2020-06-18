import 'package:flutter/material.dart';

import 'productcard.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30),
      child: Container(
                height: 120,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    ProductCard(image: 'gambar/product1.png', name: 'Ankle Boots', price: 'RM49.99',),
                    ProductCard(image: 'gambar/product2.png', name: 'Backpack', price: 'RM20.58',),
                    ProductCard(image: 'gambar/product3.png', name: 'Red Scarf', price: '11.00',),
                    ProductCard(image: 'gambar/product4.png', name: 'Ankle Boots2', price: 'RM49.99',),
                  ],
                ),
              ),
    );
  }
}