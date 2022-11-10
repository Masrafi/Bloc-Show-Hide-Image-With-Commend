import 'package:blocapp/withBloc/bloc/image_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'withBloc/home_bloc.dart';

void main() {
  runApp(const MyAppBloc());
}

class MyAppBloc extends StatelessWidget {
  const MyAppBloc({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImageBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
