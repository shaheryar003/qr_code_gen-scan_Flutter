import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_gem/widgets/ulti.dart';

// ignore_for_file: public_member_api_docs

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.text);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR CODE',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarcodeWidget(
              barcode: Barcode.qrCode(), // Barcode type and settings
              data: widget.text, // Content
              width: 300,
              height: 300,
            ),
            Container(
              width: 30,
              height: 30,
              child: Utils().toast(widget.text),
            ),
          ],
        ),
      ),
    );
  }
}
