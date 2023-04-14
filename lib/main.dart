import 'package:flutter/material.dart';
import 'package:qr_code_gem/create.dart';
import 'package:qr_code_gem/qr_view.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:qr_code_gem/widgets/gradient.dart';

void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final font = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: const Text(
            'QR SOLUTIONS',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gradiant_btn(
              text: "SCAN QR CODE",
              route: QRViewExample(),
            ),
            SizedBox(
              height: 20,
            ),
            gradiant_btn(
              text: "CREATE QR CODE",
              route: createQr(),
            ),
          ],
        ),
      ),
    );
  }
}
