import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product.dart';
import 'package:taobin/topping.dart/topping_cof.dart';
import 'package:taobin/topping.dart/topping_tea.dart';

class index extends StatefulWidget {
  //const product_tea({Key? key}) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  List<Product> product_tea = [
    new Product('CHOCOLATE', 60, "assets/images/1.png", 'tea'),
    new Product('THAI MILK TEA ', 75, "assets/images/5.png", 'tea'),
    new Product('LIMEADE TEA', 65, "assets/images/2.png", 'tea'),
    new Product('  MOCHA', 60, "assets/images/4.png", 'coffee'),
    new Product('ESPRESSO', 75, "assets/images/6.png", 'coffee'),
    new Product('AMERICANO', 65, "assets/images/3.png", 'coffee'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 218, 246),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: product_tea.length,
          itemBuilder: (context, index) {
            return FlatButton(
              child: GridTile(
                child: Image.asset(
                  product_tea[index].imageurl,
                ),
                footer: Container(
                  child: Column(
                    children: [
                      Text(
                        product_tea[index].name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text('price ${product_tea[index].price} ฿',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

                //trailing: Text(product_tea[index].selec),
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
