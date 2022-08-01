import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product.dart';
import 'package:taobin/topping.dart/topping_cof.dart';

class product_coffee extends StatefulWidget {
  //const product_coffee({Key? key}) : super(key: key);

  @override
  State<product_coffee> createState() => _product_coffeeState();
}

class _product_coffeeState extends State<product_coffee> {
  List<Product> product_cof = [
    new Product(
        'LATTE',
        60.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523754558787634/4.png',
        ''),
    new Product(
        'MOCHA',
        75.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998518182862147584/unknown.png',
        ''),
    new Product(
        'AMERICANO',
        65.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755825479720/3.png',
        ''),
    // new Product('CHOCOLATE', 60.0,
    //     'https://cdn.discordapp.com/attachments/803104391548502046/998523755208904714/1.png'),
    // new Product('THAI MILK TEA ', 75.0,
    //     'https://cdn.discordapp.com/attachments/803104391548502046/998523755510890496/unknown.png'),
    // new Product('LIMEADE TEA', 65.0,
    //     'https://cdn.discordapp.com/attachments/803104391548502046/998523754894340176/2.png')
  ];

  // List<Product> product_tea = [
  //   new Product('CHOCOLATE', 60.0,
  //       'https://cdn.discordapp.com/attachments/803104391548502046/998523755208904714/1.png'),
  //   new Product('THAI MILK TEA ', 75.0,
  //       'https://cdn.discordapp.com/attachments/803104391548502046/998523755510890496/unknown.png'),
  //   new Product('LIMEADE TEA', 65.0,
  //       'https://cdn.discordapp.com/attachments/803104391548502046/998523754894340176/2.png')
  // ];
  List price = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COFFEE'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 184, 218, 246),
      body: Container(
          height: 5000,
          child: GridView.count(
            primary: false,
            crossAxisCount: product_cof.length,
            children: List.generate(3, (index) {
              return SizedBox(
                height: 500,
                width: 500,
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(product_cof[index].imageurl),
                        Text(
                          product_cof[index].name,
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'price ${product_cof[index].price}',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      price.add(product_cof[index].price);
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => topping_cof(
                                  p_cof: product_cof[index],
                                ))));
                  },
                ),
              );
            }),
          )),

      // ListView.builder(
      //     itemCount: product_cof.length,
      //     itemBuilder: (context, index) {
      //       return SizedBox(
      //         height: 221,
      //         width: 50,
      //         child: FlatButton(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Image.network(product_cof[index].imageurl),
      //                 Text(
      //                   product_cof[index].name,
      //                   style: TextStyle(fontSize: 20),
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Text(
      //                       'price ${product_cof[index].price}',
      //                       style: TextStyle(fontSize: 17),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //           onPressed: () {
      //             setState(() {
      //               price.add(product_cof[index].price);
      //             });
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: ((context) => topping_cof(
      //                           p_cof: product_cof[index],
      //                         ))));
      //           },
      //         ),
      //       );
      //     })
    );
  }
}
