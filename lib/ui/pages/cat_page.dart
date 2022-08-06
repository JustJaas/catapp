import 'package:catapp/ui/pages/blocs/bloc/cat_bloc.dart';
import 'package:catapp/ui/pages/cat_container.dart';
import 'package:catapp/ui/pages/cat_error.dart';
import 'package:catapp/ui/pages/cat_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsPage extends StatefulWidget {
  const CatsPage({Key? key}) : super(key: key);

  @override
  State<CatsPage> createState() => _CatsPageState();
}

class _CatsPageState extends State<CatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<CatBloc, CatState>(
                  builder: (context, state) {
                    if (state.firstLoad) {
                      context.read<CatBloc>().add(OnFirstLoadEvent());
                      return const CatLoader();
                    } else if (state.isError) {
                      return const CatError();
                    } else {
                      return const CatContainer();
                    }
                  },
                )
              ],
            )),
    );
  }
}