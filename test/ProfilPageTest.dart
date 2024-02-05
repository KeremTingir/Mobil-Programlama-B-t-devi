import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobil_final_odev/SourceCodes/ProfilPage.dart';

void main() {
  testWidgets('ProfilePage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: ProfilePage(),
      ),
    );


    expect(find.text('Profil'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);


    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(); // Wait for the page transition to complete


    expect(find.text('Yeni Ürün Ekle'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2)); // Two TextFormFields on the NewItemPage
  });
}
