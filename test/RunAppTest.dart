import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobil_final_odev/SourceCodes/RunApp.dart';

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    expect(find.byType(AuthPage), findsOneWidget);
  });
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello, this is AuthPage!'),
      ),
    );
  }
}
