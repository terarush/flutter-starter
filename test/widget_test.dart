import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/main.dart';

void main() {
  testWidgets('Welcome screen renders properly smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const FlutterStarterApp());
    await tester.pumpAndSettle();

    expect(find.text('FLUTTER STARTER'), findsOneWidget);
    expect(find.text('TeraRush Flutter Starter'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });
}
