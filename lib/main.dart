import 'package:bloc_testapp/Apps/CounterAppBloc.dart';
import 'package:bloc_testapp/Bloc/counter_bloc.dart';
import 'package:bloc_testapp/Bloc/observer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CounterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner:
            false,

        home: CounterAppBloc(),
      ),
    );
  }
}


// Cubit

// Bloc