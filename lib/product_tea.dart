import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product.dart';
import 'package:taobin/topping.dart/topping_cof.dart';
import 'package:taobin/topping.dart/topping_tea.dart';

class product_tea extends StatefulWidget {
  //const product_tea({Key? key}) : super(key: key);

  @override
  State<product_tea> createState() => _product_teaState();
}

class _product_teaState extends State<product_tea> {
  List<Product> product_tea = [
    new Product(
        'CHOCOLATE',
        60.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755208904714/1.png',
        'tea'),
    new Product(
        'THAI MILK TEA ',
        75.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755510890496/unknown.png',
        'tea'),
    new Product(
        'LIMEADE TEA',
        65.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523754894340176/2.png',
        'tea'),
    new Product(
        'LATTE',
        60.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523754558787634/4.png',
        'coffee'),
    new Product(
        'MOCHA',
        75.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998518182862147584/unknown.png',
        'coffee'),
    new Product(
        'AMERICANO',
        65.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755825479720/3.png',
        'coffee'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEA'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 184, 218, 246),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: product_tea.length,
          itemBuilder: (context, index) {
            return FlatButton(
              child: GridTile(
                child: Image.network(
                  product_tea[index].imageurl,
                ),
                footer: GridTileBar(
                  title: Text(
                    product_tea[index].name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  subtitle: Text('price ${product_tea[index].price}',
                      style: TextStyle(color: Colors.black)),
                  //trailing: Text(product_tea[index].selec),
                ),
              ),
              onPressed: () {
                if (product_tea[index].selec == 'tea') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              topping_tea(p_tea: product_tea[index]))));
                } else
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => topping_cof(
                                p_cof: product_tea[index],
                              ))));
              },
            );
          }),
    );
  }
}
