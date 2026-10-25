import 'package:flutter_test/flutter_test.dart';
import 'package:widget_dasar/main.dart';

void main() {
  testWidgets('Dashboard basic smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());

    expect(find.text('P07 - Widget Dasar Flutter'), findsOneWidget);
    expect(find.text('01'), findsOneWidget);
    expect(find.text('Text Widget & Styling'), findsOneWidget);
  });
}
