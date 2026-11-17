import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:esilv_shop/app.dart';

void main() {
  testWidgets('EsilvShop smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: EsilvShop()));

    // Verify app title or initial state
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
