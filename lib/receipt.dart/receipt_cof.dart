import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';

class receipt_cof extends StatefulWidget {
  final Product op_cof;
  final double receiptsum;
  const receipt_cof({Key? key, required this.op_cof, required this.receiptsum})
      : super(key: key);

  @override
  State<receipt_cof> createState() => _receipt_cofState();
}

class _receipt_cofState extends State<receipt_cof> {
  TextEditingController controller = TextEditingController(text: '0');
  double allsum2 = 0;

  double Finally = 0;

  void initState() {
    allsum2 = widget.receiptsum;
    super.initState();
  }

  // void total(){
  //   double cha
  //   setState(() {
  //     allsum2 -=
  //   });
  // }

  void submit() {
    String PrintInput = controller.text;
    Finally = double.parse(PrintInput) - allsum2;

    if (Finally < 0) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text('Yed Hee Get money'),
            content: Text(' ขาดอีก ${Finally.abs()} บาทครับ')),
      );
    } else if (Finally == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text('Yed Hee Get money'),
              content: Text('โอเคขอบคุณที่มาซื้อ')));
    }
    print(Finally);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RECEIPT'),
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
              Image.network(widget.op_cof.imageurl),
              Text(
                widget.op_cof.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total: \$ ${allsum2} ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('จำนวนเงินที่จ่าย',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('เงินทอน',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
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
                              '${Finally}',
                              style: TextStyle(fontSize: 20),
                            ))),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
        bottomSheet: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                child: Text('Submit'),
                color: Colors.lightBlue,
                onPressed: () {
                  // setState(() => isLoading = true);
                  // await Future.delayed(const Duration(seconds: 2));
                  // setState(() => isLoading = false);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => receipt_cof(
                  //               op_cof: widget.t_cof,
                  //               receiptsum: allsum1,
                  //             ))));
                  setState(() {
                    submit();
                  });
                },
              ),
            ])));
  }
}
