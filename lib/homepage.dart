import 'package:flutter/material.dart';
import 'package:flutter_assignment_bro/product.dart';
import 'navbar.dart';
import 'promotioncard.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(219, 69, 69, 1),
            title: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    suffixStyle: TextStyle(color: Colors.grey),
                    hintText: 'search product...',
                    hintStyle: TextStyle(fontSize: 12),
                    fillColor: Colors.white,
                    filled: true,
                    // border: OutlineInputBorder(borderRadius: BorderRadius.all(
                    //   Radius.circular(10)
                    // )

                    // ),
                    enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    focusedBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.add_alert, color: Colors.white),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.assignment_ind, color: Colors.white),
                  onPressed: null),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 340,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                  child: SizedBox(
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'gambar/clothes.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Clothing',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'gambar/Beauty.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Beauty',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'gambar/Shoes.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Shoes',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'gambar/furniture.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Electronics',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'gambar/more.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('See all',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10)),
                              ],
                            ),
                          ],
                        ),
                        shadowColor: Colors.grey,
                        elevation: 5,
                      ),
                      width: double.infinity,
                      height: 80),
                ),
                Container(
                  width: 340,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Latest",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 150.0,
                    width: double.infinity,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        PromotionCard(
                          image: 'gambar/banner1.png',
                        ),
                        PromotionCard(
                          image: 'gambar/banner2.png',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Top Picks",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Product(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
