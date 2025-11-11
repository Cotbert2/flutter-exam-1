import 'package:flutter/material.dart';
import 'widgets/button.dart';

//molecula
class InputsTreeDetail extends StatelessWidget {
  final TextEditingController paltosController;
  final TextEditingController limonController;
  final TextEditingController chirimoyosController;

  const InputsTreeDetail({
    super.key,
    required this.paltosController,
    required this.limonController,
    required this.chirimoyosController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: paltosController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Number of Paltos',
          ),
        ),
        TextField(
          controller: limonController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Number of Limon',
          ),
        ),
        TextField(
          controller: chirimoyosController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Number of Chirimoyos',
          ),
        ),
      ],
    );
  }
}

//// organism (filend and button)

class TreeCard extends StatefulWidget {
  const TreeCard({super.key});

  @override
  State<TreeCard> createState() => _TreeCardState();
}

class _TreeCardState extends State<TreeCard> {
  final TextEditingController paltosController = TextEditingController();
  final TextEditingController limonController = TextEditingController();
  final TextEditingController chirimoyosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputsTreeDetail(
              paltosController: paltosController,
              limonController: limonController,
              chirimoyosController: chirimoyosController,
            ),
            const SizedBox(height: 20),
            ButtonCalculateTree(
              paltosController: paltosController,
              limonController: limonController,
              chirimoyosController: chirimoyosController,
            ),
          ],
        ),
      ),
    );
  }
}

//page
class TreeView extends StatelessWidget {
  const TreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tree Fruit Calculator'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: TreeCard(),
      ),
    );
  }
}