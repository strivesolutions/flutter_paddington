import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paddington/paddington.dart';

void main() {
  testWidgets('Works in a reorderablelistview', (tester) async {
    final listView = MaterialApp(
      home: ReorderableListView(
        onReorder: (oldIndex, newIndex) {},
        children: padded(children: [
          Text(
            'test',
            key: Key('1'),
          )
        ]),
      ),
    );

    await tester.pumpWidget(listView);

    // no exception means pass
  });
}
