import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            LeafBorderText(
              text: 'Gambar 1',
              imgCode: '1',
            ),
            LeafBorderText(
              text: 'Gambar 2',
              imgCode: '2',
            ),
            LeafBorderText(
              imgCode: '0',
            )
          ],
        ),
      ),
    );
  }
}

class LeafBorderText extends StatelessWidget {
  final String imgCode;
  final String text;
  const LeafBorderText(
      {super.key, this.text = 'halo dunia', this.imgCode = '1'});

  void handleButton() {
    print("Saya dipencet");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 219, 143, 72),
          border: Border.all(),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Row(
          children: [
            Image(
                image: NetworkImage(
                    'https://picsum.photos/50/50/?random=$imgCode')),
            const SizedBox(
              width: 8,
            ),
            Icon(Icons.settings_accessibility),
            Text(
              text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 27, 124, 153),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: handleButton, child: const Text('Pencet Saya')))
          ],
        ),
      ),
    );
  }
}
