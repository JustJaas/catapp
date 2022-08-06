import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CatError extends StatelessWidget {
  const CatError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 20),
        Lottie.asset('assets/lotties/cat_error.json',
            height: MediaQuery.of(context).size.height * 0.4),
        const Text('Hubo un error al cargar la página'),        
        const SizedBox(
          height: 50,
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 50),
        //   child: ElevatedButton(
        //       ),
        // ),
      ]),
    );

    // onPressed: () {
    //                       context.read<PostBloc>().add(GetPostList(page: 1));
    //                     },
  }
}