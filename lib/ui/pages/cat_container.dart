import 'package:catapp/ui/pages/blocs/bloc/cat_bloc.dart';
import 'package:catapp/ui/pages/cat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatContainer extends StatelessWidget {
  const CatContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatBloc, CatState>(
      builder: (context, state) {
        return Column(
          children: [
            ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.cats.length,
                itemBuilder: (BuildContext context, int index) {
                  return CatCard(
                    cat: state.cats[index],
                  );
                }),
          ],
        );
      },
    );
  }
}