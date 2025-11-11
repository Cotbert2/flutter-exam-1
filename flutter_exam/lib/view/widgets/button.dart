import 'package:flutter/material.dart';
import '../../controller/tree_controller.dart';

//atom
class Button extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

//molecule
class ButtonCalculateTree extends StatelessWidget {
  final TextEditingController paltosController;
  final TextEditingController limonController;
  final TextEditingController chirimoyosController;

  const ButtonCalculateTree({
    super.key,
    required this.paltosController,
    required this.limonController,
    required this.chirimoyosController,
  });

  @override
  Widget build(BuildContext context) {
    final TreeController treeController = TreeController();

    return Button(
      buttonText: 'Calculate Price',
      onPressed: () {
        final result = treeController.getDetailedPrice(
          paltosController.text,
          limonController.text,
          chirimoyosController.text,
        );

        Navigator.pushNamed(
          context,
          '/result_page',
          arguments: result,
        );
      },
    );
  }
}