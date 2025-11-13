import 'package:flutter/material.dart';
import 'package:hm_prof/pages/cart.dart';
import 'package:hm_prof/pages/catalog.dart';
import 'package:hm_prof/pages/head.dart';
import 'package:hm_prof/pages/projects.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => Head(),
              transitionDuration: Duration.zero,
            );
          case "/catalog":
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => Catalog(),
              transitionDuration: Duration.zero,
            );
          case '/projects':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => Projects(),
              transitionDuration: Duration.zero,
            );
          case '/cart':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => Cart(),
              transitionDuration: Duration.zero,
            );
        }
      },
    ),
  );
}
