import 'package:catapp/ui/pages/blocs/bloc/cat_bloc.dart';
import 'package:catapp/ui/pages/cat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CatBloc()),
      ],
      child: const MaterialApp(
        title: 'Cats Demo',
        home:  CatsPage(),
        debugShowCheckedModeBanner: false,
        
      ),
    );
  }
}
