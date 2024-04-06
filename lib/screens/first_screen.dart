import 'package:flutter/material.dart';
import 'package:qwer/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('첫번째 화면'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text('버튼'),
              ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()),
                    );
                  },
                icon: const Icon(Icons.ac_unit),
                label: const Text('버튼'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text(
                  '텍스트 버튼',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('아웃라인버튼'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.text_decrease),
                label: const Text('아웃라인.아이콘'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
