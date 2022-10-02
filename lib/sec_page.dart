import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_counter.dart';

class SECpage extends StatelessWidget {
  const SECpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Consumer<MyCounter>(builder: (context, mycounter, child) {
          return Scaffold(
            appBar: AppBar(actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.forward))
            ], title: Text('Counter is ${mycounter.counter}')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SEC PAGE RESULT IS ${mycounter.counter} !'),
                  const SizedBox(height: 20,),
                  IconButton(
                  onPressed: () {
                    mycounter.inc();
                  },
                  icon: const Icon(Icons.add))
                ],
              ),
            ),
          );
        }));
  }
}
