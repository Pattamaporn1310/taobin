import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product.dart';
import 'package:taobin/topping.dart/topping_tea.dart';

class product_tea extends StatefulWidget {
  //const product_tea({Key? key}) : super(key: key);

  @override
  State<product_tea> createState() => _product_teaState();
}

class _product_teaState extends State<product_tea> {
  List<Product> product_tea = [
    new Product('CHOCOLATE', 60.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755208904714/1.png'),
    new Product('THAI MILK TEA ', 75.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523755510890496/unknown.png'),
    new Product('LIMEADE TEA', 65.0,
        'https://cdn.discordapp.com/attachments/803104391548502046/998523754894340176/2.png')
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
        body: ListView.builder(
            itemCount: product_tea.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 221,
                width: 50,
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          product_tea[index].name,
                          style: TextStyle(fontSize: 20),
                        ),
                        Image.network(product_tea[index].imageurl),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'price ${product_tea[index].price}',
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                topping_tea(p_tea: product_tea[index]))));
                  },
                ),
              );
            }));
  }
}
