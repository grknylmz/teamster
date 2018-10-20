import 'package:flutter/material.dart';
import 'map_ful.dart';
import '../widget/custom_text.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(
          text: 'Harita',
          fontSize: 22.0,
        ),
        leading: IconButton(
          color: Colors.redAccent,
          tooltip: 'Geri',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: MapView(),
    );
  }
}
