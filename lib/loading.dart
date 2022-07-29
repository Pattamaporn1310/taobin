import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 180, 234),
      body: Center(
        child: SpinKitCircle(
          duration: Duration(seconds: 1),
          size: 140,
          itemBuilder: (context, index) {
            final colors = [Colors.white, Colors.pink];
            final color = colors[index % colors.length];

            return DecoratedBox(
                decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ));
          },
        ),
      ),
    );
  }
}
