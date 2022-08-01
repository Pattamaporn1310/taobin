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
  //List name = [];
  topping_cof({
    Key? key,
    required this.p_cof,
  }) : super(key: key);

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

  //showVlue
  double allSum = 0;
  void initState() {
    allSum = widget.p_cof.price;
    super.initState();
  }

  // void count() {
  //   for (var i = 0; i < widget.p_cof.price; i++) honey += widget.p_cof.price[i];
  //}

//honey
  void H_cal() {
    setState(() {
      if (sum > 0) {
        sum--;
        allSum -= honey;
      } else if (sum == 0) {
        sum = 0;
      } else {
        allSum = widget.p_cof.price;
      }
    });
  }

  void H_cal1() {
    double countPriceHoney = 0;
    setState(() {
      sum++;

      countPriceHoney = (honey * sum) / sum;
      allSum = countPriceHoney + allSum;
    });
  }

//sugar
  void S_cal() {
    setState(() {
      if (sum2 > 0) {
        sum2--;
        allSum -= sugar;
      } else if (sum2 == 0) {
        sum2 = 0;
      } else {
        allSum = widget.p_cof.price;
      }
    });
  }

  void S_cal2() {
    double countPriceSugar = 0;

    setState(() {
      sum2++;

      countPriceSugar = (sugar * sum2) / sum2;
      print(sum2);

      print(countPriceSugar);
      allSum = countPriceSugar + allSum;
      print(allSum);
    });
  }

//milk
  void M_cal() {
    setState(() {
      if (sum3 > 0) {
        sum3--;
        allSum -= milk;
      } else if (sum3 == 0) {
        sum3 = 0;
      } else {
        allSum = widget.p_cof.price;
      }
    });
  }

  void M_cal3() {
    double countPriceSugar = 0;

    setState(() {
      sum3++;

      countPriceSugar = (sum3 * milk) / sum3;
      allSum = countPriceSugar + allSum;
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
              Image.asset(widget.p_cof.imageurl),
              Text(
                widget.p_cof.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'price:  ${allSum}฿',
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
                                      H_cal();
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
                              H_cal1();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 125,
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
                                      S_cal();
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
                              S_cal2();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 125,
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
                                      M_cal();
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
                              M_cal3();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 125,
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
                    await Future.delayed(const Duration(seconds: 1));
                    setState(() => isLoading = false);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => option_cof(
                                  t_cof: widget.p_cof,
                                  Optionsum: allSum,
                                ))));
                  },
                )
              ])));
}
