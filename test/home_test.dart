import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/home.dart';

void main() {
  testWidgets(
      'default counter value 0 and per click counter shoud incress by 1',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: CounterHome(),
    ));

//check text text value is 0 as a default
    final ctr = find.text("0");
    expect(ctr, findsOneWidget);

    final ctr2 = find.text("1");
    expect(ctr2, findsNothing);

    // final counterBtn = find.byWidget(FloatingActionButton(onPressed: () {}));
    final counterBtn = find.byType(FloatingActionButton);
    await tester.tap(counterBtn);
    //reload only
    await tester.pump();

    final ctr3 = find.text("1");
    expect(ctr3, findsOneWidget); // 1 should only one time

    expect(ctr, findsNothing); //0 should not found

    //check an appbar is availabe or not
    expect(find.byType(AppBar), findsOneWidget);
  });
}
