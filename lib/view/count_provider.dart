import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut1/provider/count_model_provider.dart';

import '../provider/count_model_provider.dart';

class CountProvider extends StatelessWidget {
  const CountProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    final CountModelProvider countModel =
        Provider.of<CountModelProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Couter App Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountModelProvider>(
          builder: (context, value, child) {
            print('only build');
            return Text(
              value.count.toString(),
              style: const TextStyle(
                fontSize: 36,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countModel.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
