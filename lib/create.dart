import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_gem/create_qr.dart';
import 'package:qr_code_gem/main.dart';
import 'package:qr_code_gem/widgets/gradient.dart';
import 'package:qr_code_gem/widgets/roundButton.dart';
import 'package:qr_code_gem/widgets/ulti.dart';

class createQr extends StatefulWidget {
  const createQr({super.key});

  @override
  State<createQr> createState() => _createQrState();
}

class _createQrState extends State<createQr> {
  var emailController = TextEditingController();
  String texting = "";

  bool isLoading = false;
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const MyHome()));
            },
            child: Icon(Icons.arrow_back)),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("Create Qr Code"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      print(value);

                      setState(() {
                        texting = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 3),
                          gapPadding: 10,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 3),
                          gapPadding: 10,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Enter Text",
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            
            gradiant_btn(
              text: "CREATE QR CODE",
              route: MyHomePage(text: texting),
            ),
          ],
        ),
      ),
    );
  }
}
