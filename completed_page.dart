import 'package:flutter/material.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 137, 128, 243),
            child: Center(
              child: Text(
                'Task ${index + 1}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
