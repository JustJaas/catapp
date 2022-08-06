import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CatLoader extends StatelessWidget {
  const CatLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 20),
        Lottie.asset('assets/lotties/cat_loader.json',
            height: MediaQuery.of(context).size.height * 0.4),               
      ]),
    );
  }
}