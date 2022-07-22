import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/loading.dart';
import 'package:taobin/option.dart/option_cof.dart';
import 'package:taobin/product.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class topping_cof extends StatefulWidget {
  final p_cof;
  topping_cof({Key? key, required this.p_cof}) : super(key: key);

  @override
  State<topping_cof> createState() => _topping_cofState();
}

class _topping_cofState extends State<topping_cof> {
  bool isLoading = false;
  int sum = 0;
  int sum2 = 0;
  int sum3 = 0;
  int honey = 20;
  int sugar = 15;
  int milk = 10;
  // void initState() {
  //   count();
  //   super.initState();
  // }

  // void count() {
  //   for (var i = 0; i < widget.p_cof.price; i++) honey += widget.p_cof.price[i];
  // }

//honey
  void cal1() {
    setState(() {
      sum--;
    });
  }

  void _cal() {
    setState(() {
      sum++;
    });
  }

//sugar
  void cal2() {
    setState(() {
      sum2--;
    });
  }

  void __cal() {
    setState(() {
      sum2++;
    });
  }

  void cal3() {
    setState(() {
      sum3--;
    });
  }

  void ___cal() {
    setState(() {
      sum3++;
    });
  }

  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingPage()
      : Scaffold(
          appBar: AppBar(
            title: Text('TOPPING'),
            //backgroundColor: Color.fromARGB(255, 184, 218, 246),
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
              Image.network(widget.p_cof.imageurl),
              Text(
                widget.p_cof.name.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'price: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      cal1();
                                    });
                                  }),
                                  icon: Icon(Icons.remove)),
                            ),
                          ],
                        ),
                      ],
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
                            ' ${sum} ',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              _cal();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 150,
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
                            ' Honey  ${honey} ฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
              //sugar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      cal2();
                                    });
                                  }),
                                  icon: Icon(Icons.remove)),
                            ),
                          ],
                        ),
                      ],
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
                            '  ${sum2} ',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              __cal();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 150,
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
                            'Sugar  ${sugar} ฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
              //milk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      cal3();
                                    });
                                  }),
                                  icon: Icon(Icons.remove)),
                            ),
                          ],
                        ),
                      ],
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
                            '  ${sum3} ',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              ___cal();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 150,
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
                            ' Milk  ${milk} ฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomSheet: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlatButton(
                  child: Text('Next'),
                  color: Colors.green,
                  onPressed: () async {
                    setState(() => isLoading = true);
                    await Future.delayed(const Duration(seconds: 2));
                    setState(() => isLoading = false);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                option_cof(t_cof: widget.p_cof))));
                  },
                )
              ])));
}
