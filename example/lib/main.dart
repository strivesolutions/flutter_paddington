import 'package:flutter/material.dart';
import 'package:paddington/paddington.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme:
              InputDecorationTheme(border: const OutlineInputBorder())),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: padded(
            padding: EdgeInsets.all(20),
            children: [
              TextFormField(),
              TextFormField(),
              TextFormField(),
              ElevatedButton(onPressed: () {}, child: Text("Foo")),
            ],
          ),
        ),
      ),
      // body: ReorderableExample(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyFlexy extends StatelessWidget {
  const MyFlexy({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text("flexy"));
  }
}

// class ReorderableExample extends StatefulWidget {
//   const ReorderableExample({super.key});

//   @override
//   State<ReorderableExample> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<ReorderableExample> {
//   final List<int> _items = List<int>.generate(50, (int index) => index);

//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;
//     final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
//     final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

//     return ReorderableListView(
//       padding: const EdgeInsets.symmetric(horizontal: 40),
//       children: padded(children: [
//         for (int index = 0; index < _items.length; index += 1)
//           ListTile(
//             key: Key('$index'),
//             tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
//             title: Text('Item ${_items[index]}'),
//           ),
//       ]),
//       onReorder: (int oldIndex, int newIndex) {
//         setState(() {
//           if (oldIndex < newIndex) {
//             newIndex -= 1;
//           }
//           final int item = _items.removeAt(oldIndex);
//           _items.insert(newIndex, item);
//         });
//       },
//     );
//   }
// }
