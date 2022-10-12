import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen(this.kind, {Key? key}) : super(key: key);

  final String kind;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go("/book_details/1");
          },
          child: Text('/books/$kind'),
        ),
      ),
    );
  }
}
