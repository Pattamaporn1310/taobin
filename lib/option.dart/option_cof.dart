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

//enum Size { small, big }

class _option_cofState extends State<option_cof> {
  bool isLoading = false;
  bool isButtonActive = true;
  bool _value = false;
  //Size? _size = Size.big;
  int val = 0;

  int sum = 0;
  double shot = 15;
  double small = 16;
  double big = 22;
  bool SmallSum = false;
  bool BigSum = false;

  //...........//
  double allsum1 = 0;
  void initState() {
    allsum1 = widget.Optionsum;
    super.initState();
  }

  void shot_cal() {
    setState(() {
      if (sum > 0) {
        sum--;
        allsum1 -= shot;
      } else if (sum == 0) {
        sum = 0;
      } else {
        allsum1 = widget.Optionsum;
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
    setState(() {
      if (SmallSum == false) {
        allsum1 = allsum1 + small;
        SmallSum = true;

        if (BigSum == true) {
          BigSum = false;
          allsum1 = allsum1 - big;
        }
      }
    });
    //print(SmallSum);
    print(SmallSum);
  }

  void big_cal() {
    setState(() {
      if (BigSum == false) {
        allsum1 = allsum1 + big;
        BigSum = true;

        if (SmallSum == true) {
          SmallSum = false;
          allsum1 = allsum1 - small;
        }
      }
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

            // ListView(
            //   padding: EdgeInsets.symmetric(vertical: 16),
            //   children: [
            //     RadioListTile<int>(
            //       value: 1,
            //       groupValue: val,
            //       title: Text('Small ${small} ฿'),
            //       onChanged: (value) => setState(() => val = 1),
            //     ),
            //   ],
            // ),
            Column(
              children: [
                ListTile(
                  title: Text('Small ${small} ฿'),
                  leading: Radio(
                    //activeColor: Color(0xFF6200EE),
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    focusColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 1;
                        small_cal();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Big ${big} ฿'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    focusColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 2,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 2;
                        big_cal();
                      });
                    },
                  ),
                ),
              ],
            ),
          ])),
          bottomSheet: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlatButton(
                  child: Text('Next'),
                  color: Colors.orange,
                  onPressed: () async {
                    if (SmallSum == false && BigSum == false) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: Text('Result'),
                            content: Text('Select U Cup')),
                      );
                    } else {
                      setState(() => isLoading = true);
                      await Future.delayed(const Duration(seconds: 1));
                      setState(() => isLoading = false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => receipt_cof(
                                    op_cof: widget.t_cof,
                                    receiptsum: allsum1,
                                  ))));
                    }
                  },
                ),
              ])));
}
