import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/main.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const RequiemApp());
    expect(find.text('REQUIEM TOOLS'), findsOneWidget);
  });
}
