import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:shared_ui/widgets/primary_btn.dart';

class WheelScreen extends StatefulWidget {
  const WheelScreen({super.key});

  @override
  State<WheelScreen> createState() => _WheelScreenState();
}

class _WheelScreenState extends State<WheelScreen> {
  late File file;
  late RiveWidgetController controller;
  late ViewModelInstance vmi;
  late ViewModelInstanceBoolean? pressed;
  late ViewModelInstanceNumber? target;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    initRive();
  }

  void spinWheel() {
    target?.value = getRandomNumber();
    final trigger = vmi.trigger('relancer');
    trigger?.trigger();
  }

  void initRive() async {
    file = (await File.asset(
      "packages/games/assets/wheel.riv",
      riveFactory: Factory.rive,
    ))!;
    controller = RiveWidgetController(
      file,
      artboardSelector: ArtboardSelector.byName("FINAL"),
    );
    vmi = controller.dataBind(DataBind.auto());
    target = vmi.number('target');
    setState(() => isInitialized = true);
  }

  double getRandomNumber() {
    final numbers = <double>[
      10.0,
      15.0,
      20.0,
      25.0,
      50.0,
      100.0,
      500.0,
      5000.0,
    ];
    final random = Random();
    return numbers[random.nextInt(numbers.length)];
  }

  @override
  void dispose() {
    file.dispose();
    vmi.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isInitialized
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CloseButton(),
                  ),
                ),
                Spacer(),
                PrimaryBtn(
                  title: "SPIN",
                  fontSize: 50,
                  elevation: 5,
                  onTap: () {
                    spinWheel();
                  },
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: RiveWidget(controller: controller, fit: Fit.cover),
                ),
              ],
            ),
    );
  }
}
