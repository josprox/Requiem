import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/main.dart';
import 'package:requiem_tools/ui/screens/landing_screen.dart';

void main() {
  testWidgets('renders the landing screen without exceptions', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const RequiemApp());

    expect(find.byType(LandingScreen), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
