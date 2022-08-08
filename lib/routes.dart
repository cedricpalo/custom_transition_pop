import 'package:custom_transition_pop/home_page.dart';
import 'package:custom_transition_pop/other_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const homePage = "/";
const normalTransitionPage = "/normalTransition";
const customTransitionPage = "/customTransition";

GoRouter generateGoRouter() {
  return GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    navigatorBuilder: (context, state, child) {
      return child;
    },
    routes: [
      GoRoute(
        name: homePage,
        path: homePage,
        pageBuilder: (context, state) {
          return MaterialPage<void>(
            key: state.pageKey,
            child: const HomePage(),
          );
        },
      ),
      GoRoute(
        name: normalTransitionPage,
        path: normalTransitionPage,
        pageBuilder: (context, state) {
          return MaterialPage<void>(
            key: state.pageKey,
            child: const OtherPage(),
          );
        },
      ),
      GoRoute(
        name: customTransitionPage,
        path: customTransitionPage,
        pageBuilder: (context, state) {
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const OtherPage(),
            transitionsBuilder: (context, animation1, animation2, child) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation1),
              child: child,
            ),
            transitionDuration: Duration.zero,
          );
        },
      ),
    ],
  );
}
