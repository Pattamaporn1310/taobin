import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/loading.dart';
import 'package:taobin/option.dart/option_tea.dart';
import 'package:taobin/product.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class topping_tea extends StatefulWidget {
  final Product p_tea;
  topping_tea({Key? key, required this.p_tea}) : super(key: key);

  @override
  State<topping_tea> createState() => _topping_teaState();
}

class _topping_teaState extends State<topping_tea> {
  bool isLoading = false;
  //add
  double sum = 0;
  double sum1 = 0;
  double sum2 = 0;
  double sum3 = 0;
  double sum4 = 0;
  //topping
  double boba = 5;
  double konjac = 15;
  double crystal = 10;
  double jelly = 5;
  double grains = 20;
  double allSum = 0;

  void initState() {
    allSum = widget.p_tea.price;
    super.initState();
  }

  void boba_cal() {
    setState(() {
      sum--;
      if (sum <= 0) {
        allSum = widget.p_tea.price;
        sum = 0;
      }
      if (sum == 0) {
      } else {
        allSum -= boba;
      }
    });
  }

  void boba_cal1() {
    double countPriceBoba = 0;
    setState(() {
      sum++;
      countPriceBoba = (boba * sum) / sum;
      allSum = countPriceBoba + allSum;
    });
  }

  void konjac_cal() {
    setState(() {
      sum1--;
      if (sum1 <= 0) {
        allSum = widget.p_tea.price;
        sum1 = 0;
      }
      if (sum1 == 0) {
      } else {
        allSum -= konjac;
      }
    });
  }

  void konjac_cal2() {
    double countPriceKonjac = 0;
    setState(() {
      sum1++;
      countPriceKonjac = (konjac * sum1) / sum1;
      allSum = countPriceKonjac + allSum;
    });
  }

  void crystal_cal() {
    setState(() {
      sum2--;

      if (sum2 <= 0) {
        allSum = widget.p_tea.price;
        sum2 = 0;
      }
      if (sum2 == 0) {
      } else {
        allSum -= crystal;
      }
    });
  }

  void crystal_cal3() {
    double countPriceCrystal = 0;
    setState(() {
      sum2++;
      countPriceCrystal = (crystal * sum2) / sum2;
      allSum = countPriceCrystal + allSum;
    });
  }

  void jelly_cal() {
    setState(() {
      sum3--;
      if (sum3 <= 0) {
        allSum = widget.p_tea.price;
        sum3 = 0;
      }
      if (sum3 == 0) {
      } else {
        allSum -= jelly;
      }
    });
  }

  void jelly_cal4() {
    double countPriceJelly = 0;
    setState(() {
      sum3++;
      countPriceJelly = (jelly * sum3) / sum3;
      allSum = countPriceJelly + allSum;
    });
  }

  void grains_cal() {
    setState(() {
      sum4--;
      if (sum4 <= 0) {
        allSum = widget.p_tea.price;
        sum4 = 0;
      }
      if (sum4 == 0) {
      } else {
        allSum -= grains;
      }
    });
  }

  void grains_cal5() {
    double countPriceGrains = 0;
    setState(() {
      sum4++;
      countPriceGrains = (grains * sum4) / sum4;
      allSum = countPriceGrains + allSum;
    });
  }

  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingPage()
      : Scaffold(
          appBar: AppBar(
            title: Text(widget.p_tea.name),
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
              Image.network(widget.p_tea.imageurl),
              Text(
                widget.p_tea.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'price: \$ ${allSum}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              //ไข่มุก
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
                                      boba_cal();
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
                            '${sum}',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              boba_cal1();
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
                            'Boba ${boba} ฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
              //บุก
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
                                      konjac_cal();
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
                            '${sum1}',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              konjac_cal2();
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
                            'Konjac ${konjac}฿',
                            style: TextStyle(fontSize: 20),
                          ))),

                      // style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  ],
                ),
              ),
              //crystal
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
                                      crystal_cal();
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
                            '${sum2}',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              crystal_cal3();
                            });
                          }),
                          icon: Icon(Icons.add)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 152,
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
                            'Crystal ${crystal}฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
              //Jelly
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
                                      jelly_cal();
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
                            '${sum3}',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              jelly_cal4();
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
                            'Jelly ${jelly}฿',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                  ],
                ),
              ),
              //Grains
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
                                      grains_cal();
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
                            '${sum4}',
                            style: TextStyle(fontSize: 20),
                          ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: (() {
                            setState(() {
                              grains_cal5();
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
                            'Grains ${grains}฿',
                            style: TextStyle(fontSize: 20),
                          ))),

                      // style: ElevatedButton.styleFrom(primary: Colors.green),
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
                                option_tea(t_tea: widget.p_tea))));
                  },
                )
              ])));
}
