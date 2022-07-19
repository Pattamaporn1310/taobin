import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/product_coffee.dart';
import 'package:taobin/product_tea.dart';

class index extends StatefulWidget {
  const index({Key? key}) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 218, 246),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: RaisedButton(
                    color: Colors.green,
                    child: Text(
                      'COFFEE',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => product_coffee()));
                    })),
              ),
            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: RaisedButton(
                  color: Colors.pink,
                  child: Text(
                    'TEA',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product_tea()));
                  },
                ),
              ),
            )
          ],
        ));
  }
}
