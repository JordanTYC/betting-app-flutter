import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveButton extends StatefulWidget {
  final String path;
  final bool isPressed;
  final int currentIndex;
  final void Function(int index) onTap;
  const RiveButton({
    super.key,
    required this.path,
    required this.isPressed,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<RiveButton> createState() => _RiveButtonState();
}

class _RiveButtonState extends State<RiveButton> {
  late File file;
  late RiveWidgetController controller;
  late ViewModelInstance vmi;
  late ViewModelInstanceBoolean? pressed;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    initRive();
  }

  void initRive() async {
    file = (await File.asset(widget.path, riveFactory: Factory.rive))!;
    controller = RiveWidgetController(file);
    vmi = controller.dataBind(DataBind.auto());
    pressed = vmi.boolean('pressed');
    pressed?.value = widget.isPressed;
    setState(() => isInitialized = true);
  }

  @override
  void dispose() {
    file.dispose();
    vmi.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant RiveButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPressed != widget.isPressed) {
      pressed?.value = widget.isPressed;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return GestureDetector(
      onTap: () {
        pressed!.value = true;
        widget.onTap(widget.currentIndex);
      },
      child: SizedBox(
        height: 48,
        width: 48,
        child: RiveWidget(controller: controller, fit: Fit.cover),
      ),
    );
  }
}
