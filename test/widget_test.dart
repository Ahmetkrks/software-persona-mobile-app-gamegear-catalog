import 'package:flutter_test/flutter_test.dart';

import 'package:game_gear_catalog/main.dart';

void main() {
  testWidgets('shows the catalog home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Discover'), findsOneWidget);
    expect(find.text('Find your next gear.'), findsOneWidget);
    expect(find.text('AeroClick Wireless Mouse'), findsOneWidget);
  });
}
