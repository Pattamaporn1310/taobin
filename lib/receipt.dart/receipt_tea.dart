import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taobin/index.dart';
import 'package:taobin/product.dart';

class receipt_tea extends StatefulWidget {
  final Product op_tea;
  final double receipttea;
  //final double receiptsum;
  const receipt_tea({Key? key, required this.op_tea, required this.receipttea})
      : super(key: key);

  @override
  State<receipt_tea> createState() => _receipt_teaState();
}

class _receipt_teaState extends State<receipt_tea> {
  TextEditingController controller = TextEditingController();
  double total = 0;

  double Finally = 0;

  void initState() {
    total = widget.receipttea;
    super.initState();
  }

  void submit() {
    String PrintInput = controller.text;
    Finally = double.parse(PrintInput) - total;

    if (Finally < 0) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text('payment amount'),
            content: Text(' ขาดอีก ${Finally.abs()} บาทค่ะ')),
      );
    } else if (Finally == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text('Complete Payment'), content: Text('Thank You :)')));
    }
    print(Finally);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          // backgroundColor: Color.fromARGB(255, 184, 218, 246),
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
                Image.asset(widget.op_tea.imageurl),
                Text(
                  widget.op_tea.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total: ${total} ฿ ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Money',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //.........//
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
                                ' ${Finally.floor()}',
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FlatButton(
                  child: Text('Submit'),
                  color: Colors.lightBlue,
                  onPressed: () async {
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
              ]))));
}
