import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut1/provider/count_model_provider.dart';

import 'view/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountModelProvider>(
      create: (context) => CountModelProvider(),
      child: MaterialApp(
        home: CountProvider(),
      ),
    );
  }
}
