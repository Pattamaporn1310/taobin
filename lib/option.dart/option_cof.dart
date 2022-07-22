import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taobin/loading.dart';

class option_cof extends StatefulWidget {
  final Product t_cof;
  const option_cof({Key? key, required this.t_cof});

  @override
  State<option_cof> createState() => _option_cofState();
}

class _option_cofState extends State<option_cof> {
  bool isLoading = false;
  int sum = 0;

  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingPage()
      : Scaffold(
          appBar: AppBar(
            title: Text(widget.t_cof.name),
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
                  'price:',
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
                                onPressed: (() {}), icon: Icon(Icons.remove)),
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
                    child:
                        IconButton(onPressed: (() {}), icon: Icon(Icons.add)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 100,
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
                          'Shot 15฿',
                          style: TextStyle(fontSize: 20),
                        ))),
                  ),
                ],
              ),
            ),
          ])),
          bottomSheet: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlatButton(
                  child: Text('Next'),
                  color: Colors.grey,
                  onPressed: () async {
                    setState(() => isLoading = true);
                    await Future.delayed(const Duration(seconds: 2));
                    setState(() => isLoading = false);
                  },
                ),
              ])));
}
