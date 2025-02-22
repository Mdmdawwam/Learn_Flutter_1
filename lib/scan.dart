import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  Barcode? _barcode;

  Widget _buildbarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan Something!',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }

    return Text(
      value.displayValue ?? 'No Display Value',
      overflow: TextOverflow.fade,
      style: TextStyle(color: Colors.white),
    );
  }

  void handlebarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scanner',
        ),
      ),
      body: Stack(
        children: [
          MobileScanner(
            onDetect: handlebarcode,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: _buildbarcode(_barcode),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
