import 'package:flutter/material.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const TextField(),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: const Text('Pesquisar'),
            ),
            const SizedBox(height: 16),
            Text(
              'Foram encontrados X livros sobre Y: ',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
    );
  }
}
