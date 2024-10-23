import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                context.push('/detail/-1');
              },
              child: const Text('상세 페이지로 이동'),
            ),
          ),
        );
      },
      routes: [
        GoRoute(
          path: 'detail/:id',
          builder: (context, state) {
            final String id = state.pathParameters['id'] ?? '-1';
            return Scaffold(
              body: Center(
                child: Text('id : $id'),
              ),
            );
          },
        ),
      ]
    ),
  ],
);
