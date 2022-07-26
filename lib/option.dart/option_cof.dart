import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taobin/loading.dart';
import 'package:taobin/receipt.dart/receipt_cof.dart';
import 'package:taobin/topping.dart/topping_cof.dart';

class option_cof extends StatefulWidget {
  final Product t_cof;
  final double Optionsum;
  const option_cof({Key? key, required this.t_cof, required this.Optionsum});

  @override
  State<option_cof> createState() => _option_cofState();
}

class _option_cofState extends State<option_cof> {
  bool isLoading = false;
  bool isButtonActive = true;
  int sum = 0;
  int sumtest = 0;
  int sumtest2 = 0;
  double shot = 15;
  double small = 16;
  double big = 22;
  //...........//
  double allsum1 = 0;
  void initState() {
    allsum1 = widget.Optionsum;
    super.initState();
  }

  void shot_cal() {
    setState(() {
      sum--;

      if (sum <= 0) {
        allsum1 = widget.Optionsum;
        sum = 0;
      }
      if (sum == 0) {
      } else {
        allsum1 -= shot;
      }
    });
  }

  void shot_cal1() {
    double countPriceShot = 0;
    setState(() {
      sum++;

      countPriceShot = (shot * sum) / sum;
      allsum1 = countPriceShot + allsum1;
    });
  }

  void small_cal() {
    double SmallSum = 0;
    setState(() {
      sumtest++;
      SmallSum = (small * sumtest) / sumtest;
      allsum1 = SmallSum + allsum1;

      // if (sumtest <= 0) {
      //   allsum1 = allsum1;
      //   sumtest = 0;
      // }
      // if (sumtest == 0) {
      // } else {
      //   allsum1 -= shot;
      // }
    });
    //print(SmallSum);
    print(sumtest);
  }

  void big_cal() {
    double BigSum = 0;
    setState(() {
      sumtest2++;
      BigSum = (big * sumtest2) / sumtest2;
      allsum1 = BigSum + allsum1;
    });
  }

  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingPage()
      : Scaffold(
          appBar: AppBar(
            title: Text('OPTION'),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => index())));
                  },
                  icon: Icon(Icons.home))
            ],
          ),
          body: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.network(widget.t_cof.imageurl),
            Text(
              widget.t_cof.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'price: \$ ${allsum1} ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Extra option',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
                                    shot_cal();
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
                            shot_cal1();
                          });
                        }),
                        icon: Icon(Icons.add)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 120,
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
                          'Shot ${shot}฿',
                          style: TextStyle(fontSize: 20),
                        ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Size glass ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 105,
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
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            small_cal();
                          });
                        },
                        child: Text(
                          'SMALL ${small} ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 105,
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
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(onSurface: Colors.blue),
                        child: Text(
                          'BIG ${big}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: isButtonActive
                            ? () {
                                setState(() => isButtonActive = false);
                                big_cal();
                              }
                            : null,
                      )
                      // TextButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       'BIG\ ${big} ',
                      //       style: TextStyle(
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.black),
                      //     )),
                      ),
                )
              ],
            )
          ])),
          bottomSheet: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlatButton(
                  child: Text('Next'),
                  color: Colors.orange,
                  onPressed: () async {
                    setState(() => isLoading = true);
                    await Future.delayed(const Duration(seconds: 2));
                    setState(() => isLoading = false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => receipt_cof(
                                  op_cof: widget.t_cof,
                                  receiptsum: allsum1,
                                ))));
                  },
                ),
              ])));
}
