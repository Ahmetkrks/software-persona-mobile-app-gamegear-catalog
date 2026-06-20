import 'package:flutter_test/flutter_test.dart';

import 'package:game_gear_catalog/main.dart';

void main() {
  testWidgets('opens product detail screen from the home grid', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Discover'), findsOneWidget);
    expect(find.text('AeroClick Wireless Mouse'), findsOneWidget);

    await tester.ensureVisible(find.text('AeroClick Wireless Mouse'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('AeroClick Wireless Mouse'));
    await tester.pumpAndSettle();

    expect(find.text('Specs'), findsOneWidget);
    expect(find.text('Add to Cart'), findsOneWidget);

    await tester.tap(find.text('Add to Cart'));
    await tester.pump();

    expect(find.text('Product added to cart'), findsOneWidget);
  });
}
