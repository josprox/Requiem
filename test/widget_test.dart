import 'package:flutter_test/flutter_test.dart';
import 'package:joss_red_installer/main.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const JossRedApp(startInBuilderMode: false));
    expect(find.text('JOSS RED'), findsOneWidget);
  });
}
