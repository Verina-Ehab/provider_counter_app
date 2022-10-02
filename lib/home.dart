import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/my_counter.dart';
import 'package:provider_counter_app/sec_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SECpage()));
              },
              icon: const Icon(Icons.forward))
        ],
        title: const Text('Provider Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // (mycounter) == (var mycounter= MyCounter(); mycounter.counter;)
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return Text('${mycounter.counter}');
            }),
            const SizedBox(
              height: 20,
            ),
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return IconButton(
                  onPressed: () {
                    mycounter.inc();
                  },
                  icon: const Icon(Icons.add));
            }),
            const SizedBox(
              height: 20,
            ),
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return IconButton(
                  onPressed: () {
                    mycounter.dec();
                  },
                  icon: const Icon(Icons.remove));
            }),
          ],
        ),
      ),
    );
  }
}
