import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';
import 'package:intl/intl.dart';

class topping_cof extends StatelessWidget {
  final Product p_cof;
  topping_cof({Key? key, required this.p_cof}) : super(key: key);

  double sum = 0;
  // void initState() {
  //   cal();

  //   super.initState();
  // }

  void cal() {
    for (var i = 0; i < p_cof.price; i++) {
      sum += p_cof.price;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(p_cof.name),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => index())));
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                'TOPPING',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(p_cof.imageurl),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'price: \$',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: (() {}), icon: Icon(Icons.remove)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 152,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Honey'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          '20฿',
                          style: TextStyle(fontSize: 20),
                        ))),

                    // style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        IconButton(onPressed: (() {}), icon: Icon(Icons.add)),
                  ),
                ],
              ),
            ),
            //sugar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: (() {}), icon: Icon(Icons.remove)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 152,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Sugar'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          '15฿',
                          style: TextStyle(fontSize: 20),
                        ))),

                    // style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        IconButton(onPressed: (() {}), icon: Icon(Icons.add)),
                  ),
                ],
              ),
            ),
            //milk
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: (() {}), icon: Icon(Icons.remove)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 152,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Milk'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          '10฿',
                          style: TextStyle(fontSize: 20),
                        ))),

                    // style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        IconButton(onPressed: (() {}), icon: Icon(Icons.add)),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                child: Text('Add'),
                color: Colors.orange,
                onPressed: () {},
              )
            ])));
  }
}
