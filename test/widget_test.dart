import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:game_gear_catalog/main.dart';

void main() {
  testWidgets('filters products by search and category', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('AeroClick Wireless Mouse'), findsOneWidget);
    expect(find.text('NovaKeys TKL Keyboard'), findsOneWidget);

    await tester.enterText(find.byType(EditableText), 'keyboard');
    await tester.pumpAndSettle();

    expect(find.text('NovaKeys TKL Keyboard'), findsOneWidget);
    expect(find.text('AeroClick Wireless Mouse'), findsNothing);

    await tester.tap(find.text('Desk'));
    await tester.pumpAndSettle();

    expect(find.text('No products found.'), findsOneWidget);
  });
}

