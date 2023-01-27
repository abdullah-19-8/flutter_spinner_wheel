import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinnerWheel extends StatefulWidget {
  const SpinnerWheel({super.key});

  @override
  State<SpinnerWheel> createState() => _SpinnerWheelState();
}

class _SpinnerWheelState extends State<SpinnerWheel> {
  final selected = ValueNotifier(0);
  final List<int> items = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];

  dispose() {
    selected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: FortuneWheel(
                items: [
                  for (var i = 0; i < items.length; i++)
                    FortuneItem(
                      child: Text(
                        items[i].toString(),
                      ),
                      style: const FortuneItemStyle(
                        color: Colors.red,
                        borderColor: Colors.black,
                        borderWidth: 5,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
