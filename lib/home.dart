import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const _sectionPadding = EdgeInsets.all(15);
  static const _sectionMargin = EdgeInsets.fromLTRB(15, 5, 15, 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My first app'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          _ImageSection(),
          _QuestionSection(),
          _CategorySection(),
          _CounterSection(),
        ],
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Home._sectionMargin,
      padding: Home._sectionPadding,
      color: Colors.lightBlue,
      child: Image.asset(
        'assets/image.png',
        height: 300,
        width: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _QuestionSection extends StatelessWidget {
  const _QuestionSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Home._sectionMargin,
      padding: Home._sectionPadding,
      color: Colors.red,
      child: const Text(
        'What image is that?',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Home._sectionMargin,
      padding: Home._sectionPadding,
      color: Colors.yellow,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _CategoryItem(icon: Icons.fastfood, label: 'Food'),
          SizedBox(width: 20),
          _CategoryItem(icon: Icons.landscape, label: 'Scenery'),
          SizedBox(width: 20),
          _CategoryItem(icon: Icons.people, label: 'People'),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Icon(icon), Text(label)],
    );
  }
}

class _CounterSection extends StatefulWidget {
  const _CounterSection();

  @override
  State<_CounterSection> createState() => _CounterSectionState();
}

class _CounterSectionState extends State<_CounterSection> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Home._sectionMargin,
      padding: Home._sectionPadding,
      color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Counter here: $_counter', style: const TextStyle(fontSize: 16)),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 154, 209, 255),
              foregroundColor: Colors.black87,
              elevation: 0,
              padding: EdgeInsets.zero,
              minimumSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: const Text('+', style: TextStyle(fontSize: 20, height: 1)),
          ),
        ],
      ),
    );
  }
}
