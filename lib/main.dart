import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePages(),
      ),
    );
  }
}

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Shoes',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/m_pemrograman.jpg'),
                      radius: 30,
                    )
                  ]),
            ),
          ],
        ),
        SizedBox(height: 20),
        CardShoes(
            titleProduct: 'Converse Chuck Taylor 70s High',
            cost: '900.000',
            Color: Colors.grey[100],
            linkProduct:
                'https://freepngimg.com/thumb/shoes/112098-pic-converse-black-shoes-free-hd-image.png'),
        CardShoes(
            titleProduct: 'Adidas Yeezy Boost SPLY 350 V2 Black',
            cost: '2.000.000',
            Color: Colors.brown[100],
            linkProduct:
                'https://freepngimg.com/thumb/adidas/58296-yeezy-sneakers-originals-adidas-shoe-png-file-hd.png'),
        CardShoes(
            titleProduct: 'Nike Flex Experience RN 3 MSL',
            cost: '3.000.000',
            Color: Colors.teal[100],
            linkProduct:
                'https://www.transparentpng.com/thumb/running-shoes/MQ02nC-running-shoes-hd-image.png'),
        CardShoes(
            titleProduct: 'Adidas Revenge Boost',
            cost: '1.500.000',
            Color: Colors.deepOrange[100],
            linkProduct:
                'https://freepngimg.com/thumb/adidas_shoes/3-2-adidas-shoes-png-clipart.png'),
      ],
    ));
  }
}

class CardShoes extends StatelessWidget {
  CardShoes(
      {required this.titleProduct,
      required this.cost,
      required this.linkProduct,
      required this.Color});

  final String titleProduct;
  final String cost;
  final String linkProduct;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Card
      height: 170,
      width: double.infinity,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset.fromDirection(25)),
        ],
        color: Color,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.green[200],
            height: 130,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleProduct, //judul product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "IDR. ${cost}", //harga product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.network(
                      '${linkProduct}',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
