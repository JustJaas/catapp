import 'package:catapp/data/entities/cat_model.dart';
import 'package:flutter/material.dart';


class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({Key? key,required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [        
        const SizedBox(height: 50,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
                  borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 3))
                  ]
          ),
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          height: 250,
          child: Column(children: [
            Text(cat.name!),
            cat.image != null ?
            Image.network( cat.image!.url!,height: 150,) : Container(),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(cat.origin!),
              Text('Inteligencia ${cat.intelligence!.toString()}')
            ],)
          ],),

        ),
      ],
    );
  }
}