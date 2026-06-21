import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:game_gear_catalog/main.dart';
import 'package:game_gear_catalog/services/cart_service.dart';

void main() {
  setUp(() {
    CartService.instance.clearCart();
  });

  testWidgets('adds and removes a product from the cart', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await pumpUntilFound(tester, find.text('AeroClick Wireless Mouse'));

    await tester.ensureVisible(find.text('AeroClick Wireless Mouse'));
    await tester.pump(const Duration(milliseconds: 200));
    await tester.tap(find.text('AeroClick Wireless Mouse'));
    await pumpUntilFound(tester, find.text('Add to Cart'));

    await tester.tap(find.text('Add to Cart'));
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.text('Product added to cart'), findsWidgets);

    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(const MyApp());
    await pumpUntilFound(tester, find.byTooltip('Cart'));
    await tester.tap(find.byTooltip('Cart'));
    await pumpUntilFound(tester, find.text('Cart'));
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('AeroClick Wireless Mouse'), findsWidgets);
    expect(find.text('Qty: 1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await pumpUntilFound(tester, find.text('Your cart is empty.'));
  });
}

Future<void> pumpUntilFound(WidgetTester tester, Finder finder) async {
  for (var i = 0; i < 30; i++) {
    await tester.pump(const Duration(milliseconds: 100));

    if (finder.evaluate().isNotEmpty) {
      return;
    }
  }

  expect(finder, findsOneWidget);
}
