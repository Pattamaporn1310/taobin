import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product.dart';

class product_coffee extends StatefulWidget {
  //const product_coffee({Key? key}) : super(key: key);

  @override
  State<product_coffee> createState() => _product_coffeeState();
}

class _product_coffeeState extends State<product_coffee> {
  List<Product> product_cof = [
    new Product('LATTE', 60.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523754558787634/4.png'),
    new Product('MOCHA', 75.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998518182862147584/unknown.png'),
    new Product('AMERICANO', 65.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755825479720/3.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COFFEE')),
      backgroundColor: Color.fromARGB(255, 248, 244, 219),
      body: ListView.builder(
          itemCount: product_cof.length,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(product_cof[index].imageurl),
                  ),
                  Center(
                    child: ListTile(
                      title: Text(product_cof[index].name),
                      subtitle: Text("\$ ${product_cof[index].price}"),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
