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
  const option_tea({Key? key, required this.t_tea});

  @override
  State<option_tea> createState() => _option_teaState();
}

enum OP { NoSugar, LessSweet, Justright, Sweet, VerySweet }

class _option_teaState extends State<option_tea> {
  bool isLoading = false;
  OP? _op = OP.NoSugar;
  int small = 16;
  int big = 22;
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
                Image.network(widget.t_tea.imageurl),
                Text(
                  widget.t_tea.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'price: ${widget.t_tea.price}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 10,
                // ),
                ListTile(
                  title: Text('No Sugar 5฿'),
                  leading: Radio<OP>(
                    value: OP.NoSugar,
                    groupValue: _op,
                    onChanged: (OP? value) {
                      setState(() {
                        _op = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Less Sweet 5฿'),
                  leading: Radio<OP>(
                    value: OP.LessSweet,
                    groupValue: _op,
                    onChanged: (OP? value) {
                      setState(() {
                        _op = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Just Right 0฿'),
                  leading: Radio<OP>(
                    value: OP.Justright,
                    groupValue: _op,
                    onChanged: (OP? value) {
                      setState(() {
                        _op = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Sweet 10฿'),
                  leading: Radio<OP>(
                    value: OP.Sweet,
                    groupValue: _op,
                    onChanged: (OP? value) {
                      setState(() {
                        _op = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Very Sweet 15฿'),
                  leading: Radio<OP>(
                    value: OP.VerySweet,
                    groupValue: _op,
                    onChanged: (OP? value) {
                      setState(() {
                        _op = value;
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
                                //small_cal();
                              });
                            },
                            child: Text(
                              'SMALL\ ${small}฿ ',
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
                        child: TextButton(
                            onPressed: () {},
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'BIG\ ${big} ฿',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                      ),
                    )
                  ],
                )
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
                    setState(() => isLoading = true);
                    await Future.delayed(const Duration(seconds: 2));
                    setState(() => isLoading = false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => receipt_tea(
                                  op_tea: widget.t_tea,
                                  //receiptsum: allsum1,
                                ))));
                  },
                ),
              ])));
}
