import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taobin/loading.dart';
import 'package:taobin/receipt.dart/receipt_tea.dart';

class option_tea extends StatefulWidget {
  final Product t_tea;
  final double Optiontea;
  const option_tea({Key? key, required this.t_tea, required this.Optiontea});

  @override
  State<option_tea> createState() => _option_teaState();
}

//enum OP { NoSugar, LessSweet, Justright, Sweet, VerySweet }

class _option_teaState extends State<option_tea> {
  //TextEditingController controller = TextEditingController();
  bool isLoading = false;
  bool SmallSum = false;
  bool BigSum = false;

  //....//
  bool nosugar = false;
  bool L_sweet = false;
  bool JR = false;
  bool sweet = false;
  bool v_sweet = false;
//..
  int val = 0;
  int selected = 0;
  //...//
  int small = 16;
  int big = 22;

  double NoSugar = 5;
  double LessSweet = 10;
  double Justright = 0;
  double Sweet = 10;
  double VerySweet = 15;
//............//
  double allsum2 = 0;
  void initState() {
    allsum2 = widget.Optiontea;
    super.initState();
  }

  void calcuall() {
    setState(() {
      if (val == 1) {
        allsum2 = widget.Optiontea;
        allsum2 = allsum2 + NoSugar;
        if (SmallSum == true) {
          allsum2 += small;
        } else if (BigSum == true) {
          allsum2 += big;
        }
      } else if (val == 2) {
        allsum2 = widget.Optiontea;
        allsum2 = allsum2 + LessSweet;
        if (SmallSum == true) {
          allsum2 += small;
        } else if (BigSum == true) {
          allsum2 += big;
        }
      } else if (val == 3) {
        allsum2 = widget.Optiontea;
        allsum2 = allsum2 + Justright;
        if (SmallSum == true) {
          allsum2 += small;
        } else if (BigSum == true) {
          allsum2 += big;
        }
      } else if (val == 4) {
        allsum2 = widget.Optiontea;
        allsum2 = allsum2 + Sweet;
        if (SmallSum == true) {
          allsum2 += small;
        } else if (BigSum == true) {
          allsum2 += big;
        }
      } else if (val == 5) {
        allsum2 = widget.Optiontea;
        allsum2 = allsum2 + VerySweet;
        if (SmallSum == true) {
          allsum2 += small;
        } else if (BigSum == true) {
          allsum2 += big;
        }
      } else {
        allsum2 = widget.Optiontea;
      }
    });
  }

  void small_cal() {
    setState(() {
      if (SmallSum == false) {
        allsum2 = allsum2 + small;
        SmallSum = true;
        if (BigSum == true) {
          BigSum = false;
          allsum2 = allsum2 - big;
        }
      }
    });
    //print(SmallSum);
    print(SmallSum);
  }

  void big_cal() {
    setState(() {
      if (BigSum == false) {
        allsum2 = allsum2 + big;
        BigSum = true;

        if (SmallSum == true) {
          SmallSum = false;
          allsum2 = allsum2 - small;
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(widget.t_tea.imageurl),
                Text(
                  widget.t_tea.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'price: ${allsum2}฿',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 10,
                // )
                ListTile(
                  title: Text('No Sugar ${NoSugar}฿'),
                  focusColor:
                      MaterialStateColor.resolveWith((states) => Colors.green),
                  leading: Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    focusColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 1;
                        calcuall();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Less Sweet ${LessSweet}฿'),
                  leading: Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    focusColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    value: 2,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 2;
                        calcuall();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Just Right ${Justright}฿'),
                  leading: Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    focusColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    value: 3,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 3;
                        calcuall();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Sweet ${Sweet}฿'),
                  leading: Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    focusColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    value: 4,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 4;
                        calcuall();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Very Sweet ${VerySweet}฿'),
                  leading: Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    focusColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    value: 5,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = 5;
                        calcuall();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Size glass ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('Small ${small} ฿'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    focusColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 1,
                    groupValue: selected,
                    onChanged: (value) {
                      setState(() {
                        selected = 1;
                        small_cal();
                      });
                    },
                    activeColor: Colors.blue,
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
                    groupValue: selected,
                    onChanged: (value) {
                      setState(() {
                        selected = 2;
                        big_cal();
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                ),
              ]),
            ),
          ),
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
                        await Future.delayed(const Duration(seconds: 2));
                        setState(() => isLoading = false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => receipt_tea(
                                      op_tea: widget.t_tea, receipttea: allsum2,
                                      //receiptsum: allsum1,
                                    ))));
                      }
                      ;
                    }),
              ])));
}
