import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobil_final_odev/SourceCodes/LoginPage.dart';

void main() {
  testWidgets('SignInPage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: SignInPage(),
        ),
      ),
    );


    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  testWidgets('SignUpPage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: SignUpPage(),
        ),
      ),
    );


    expect(find.byType(TextField), findsNWidgets(5));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
