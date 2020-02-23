import 'package:flutter/material.dart';
import 'barcodePage.dart';
import 'qrCode.dart';

class BarCode extends StatefulWidget {
  final String title = "Generate Bar Code";

  @override
  _BarCodeState createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(text: "Barcode"),
            Tab(text: "QR Code"),
          ],
        ),
        body: TabBarView(
          children: [
            BarcodePage(),
            QRCodePage(),
          ],
        ),
      ),
    );
  }
}
