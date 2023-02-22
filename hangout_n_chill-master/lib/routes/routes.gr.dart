// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../pages/analysis_page.dart' as _i13;
import '../pages/authentication/complete_sing_up_2_page.dart' as _i8;
import '../pages/authentication/complete_sing_up_page.dart' as _i7;
import '../pages/authentication/forgot_password_page.dart' as _i6;
import '../pages/authentication/intro_page.dart' as _i1;
import '../pages/authentication/sing_in_page.dart' as _i3;
import '../pages/authentication/sing_up_page.dart' as _i4;
import '../pages/authentication/verification_page.dart' as _i5;
import '../pages/first_time_page.dart' as _i9;
import '../pages/home_page.dart' as _i2;
import '../pages/invite_progress_page.dart' as _i11;
import '../pages/my_invites.dart' as _i10;
import '../pages/notifications_page.dart' as _i12;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    IntroPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.IntroPage());
    },
    HomePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SingInPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SingInPage());
    },
    SingUpPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SingUpPage());
    },
    VerificationPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.VerificationPage());
    },
    ForgotPasswordPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordPage());
    },
    CompleteSingUpPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CompleteSingUpPage());
    },
    CompleteSingUp2PageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CompleteSingUp2Page());
    },
    FirstTimePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.FirstTimePage());
    },
    MyInvitesPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MyInvitesPage());
    },
    InviteProgressPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.InviteProgressPage());
    },
    NotificationsPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.NotificationsPage());
    },
    AnalysisPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.AnalysisPage());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(IntroPageRoute.name, path: '/'),
        _i14.RouteConfig(HomePageRoute.name, path: 'home_page_route'),
        _i14.RouteConfig(SingInPageRoute.name, path: 'sing_in_page_route'),
        _i14.RouteConfig(SingUpPageRoute.name, path: 'sing_up_page_route'),
        _i14.RouteConfig(VerificationPageRoute.name,
            path: 'verification_page_route'),
        _i14.RouteConfig(ForgotPasswordPageRoute.name,
            path: 'forgot_password_page_route'),
        _i14.RouteConfig(CompleteSingUpPageRoute.name,
            path: 'complete_sing_up_page'),
        _i14.RouteConfig(CompleteSingUp2PageRoute.name,
            path: 'complete_sing_up_2_page'),
        _i14.RouteConfig(FirstTimePageRoute.name, path: 'first_time_page'),
        _i14.RouteConfig(MyInvitesPageRoute.name, path: 'my_invites_page'),
        _i14.RouteConfig(InviteProgressPageRoute.name,
            path: 'invite_progress_page'),
        _i14.RouteConfig(NotificationsPageRoute.name,
            path: 'notifications_page'),
        _i14.RouteConfig(AnalysisPageRoute.name, path: 'analysis_page')
      ];
}

/// generated route for
/// [_i1.IntroPage]
class IntroPageRoute extends _i14.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i14.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: 'home_page_route');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.SingInPage]
class SingInPageRoute extends _i14.PageRouteInfo<void> {
  const SingInPageRoute()
      : super(SingInPageRoute.name, path: 'sing_in_page_route');

  static const String name = 'SingInPageRoute';
}

/// generated route for
/// [_i4.SingUpPage]
class SingUpPageRoute extends _i14.PageRouteInfo<void> {
  const SingUpPageRoute()
      : super(SingUpPageRoute.name, path: 'sing_up_page_route');

  static const String name = 'SingUpPageRoute';
}

/// generated route for
/// [_i5.VerificationPage]
class VerificationPageRoute extends _i14.PageRouteInfo<void> {
  const VerificationPageRoute()
      : super(VerificationPageRoute.name, path: 'verification_page_route');

  static const String name = 'VerificationPageRoute';
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordPageRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordPageRoute()
      : super(ForgotPasswordPageRoute.name, path: 'forgot_password_page_route');

  static const String name = 'ForgotPasswordPageRoute';
}

/// generated route for
/// [_i7.CompleteSingUpPage]
class CompleteSingUpPageRoute extends _i14.PageRouteInfo<void> {
  const CompleteSingUpPageRoute()
      : super(CompleteSingUpPageRoute.name, path: 'complete_sing_up_page');

  static const String name = 'CompleteSingUpPageRoute';
}

/// generated route for
/// [_i8.CompleteSingUp2Page]
class CompleteSingUp2PageRoute extends _i14.PageRouteInfo<void> {
  const CompleteSingUp2PageRoute()
      : super(CompleteSingUp2PageRoute.name, path: 'complete_sing_up_2_page');

  static const String name = 'CompleteSingUp2PageRoute';
}

/// generated route for
/// [_i9.FirstTimePage]
class FirstTimePageRoute extends _i14.PageRouteInfo<void> {
  const FirstTimePageRoute()
      : super(FirstTimePageRoute.name, path: 'first_time_page');

  static const String name = 'FirstTimePageRoute';
}

/// generated route for
/// [_i10.MyInvitesPage]
class MyInvitesPageRoute extends _i14.PageRouteInfo<void> {
  const MyInvitesPageRoute()
      : super(MyInvitesPageRoute.name, path: 'my_invites_page');

  static const String name = 'MyInvitesPageRoute';
}

/// generated route for
/// [_i11.InviteProgressPage]
class InviteProgressPageRoute extends _i14.PageRouteInfo<void> {
  const InviteProgressPageRoute()
      : super(InviteProgressPageRoute.name, path: 'invite_progress_page');

  static const String name = 'InviteProgressPageRoute';
}

/// generated route for
/// [_i12.NotificationsPage]
class NotificationsPageRoute extends _i14.PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(NotificationsPageRoute.name, path: 'notifications_page');

  static const String name = 'NotificationsPageRoute';
}

/// generated route for
/// [_i13.AnalysisPage]
class AnalysisPageRoute extends _i14.PageRouteInfo<void> {
  const AnalysisPageRoute()
      : super(AnalysisPageRoute.name, path: 'analysis_page');

  static const String name = 'AnalysisPageRoute';
}
