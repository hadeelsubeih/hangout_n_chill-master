import 'package:auto_route/auto_route.dart';
import 'package:hangout_n_chill/pages/analysis_page.dart';
import 'package:hangout_n_chill/pages/authentication/complete_sing_up_page.dart';
import 'package:hangout_n_chill/pages/authentication/complete_sing_up_2_page.dart';
import 'package:hangout_n_chill/pages/authentication/forgot_password_page.dart';
import 'package:hangout_n_chill/pages/authentication/intro_page.dart';
import 'package:hangout_n_chill/pages/authentication/sing_in_page.dart';
import 'package:hangout_n_chill/pages/authentication/sing_up_page.dart';
import 'package:hangout_n_chill/pages/authentication/verification_page.dart';
import 'package:hangout_n_chill/pages/first_time_page.dart';
import 'package:hangout_n_chill/pages/home_page.dart';
import 'package:hangout_n_chill/pages/invite_progress_page.dart';
import 'package:hangout_n_chill/pages/my_invites.dart';
import 'package:hangout_n_chill/pages/notifications_page.dart';
import 'package:hangout_n_chill/routes/routes.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(
    initial: true,
    path: '/',
    name: 'IntroPageRoute',
    page: IntroPage,
  ),
  AutoRoute(
    path: 'home_page_route',
    name: 'HomePageRoute',
    page: HomePage,
  ),
  AutoRoute(
    path: 'sing_in_page_route',
    name: 'SingInPageRoute',
    page: SingInPage,
  ),
  AutoRoute(
    path: 'sing_up_page_route',
    name: 'SingUpPageRoute',
    page: SingUpPage,
  ),
  AutoRoute(
    path: 'verification_page_route',
    name: 'VerificationPageRoute',
    page: VerificationPage,
  ),
  AutoRoute(
    path: 'forgot_password_page_route',
    name: 'ForgotPasswordPageRoute',
    page: ForgotPasswordPage,
  ),
  AutoRoute(
    path: 'complete_sing_up_page',
    name: 'CompleteSingUpPageRoute',
    page: CompleteSingUpPage,
  ),
  AutoRoute(
    path: 'complete_sing_up_2_page',
    name: 'CompleteSingUp2PageRoute',
    page: CompleteSingUp2Page,
  ),
  AutoRoute(
    path: 'first_time_page',
    name: 'FirstTimePageRoute',
    page: FirstTimePage,
  ),
  AutoRoute(
    path: 'my_invites_page',
    name: 'MyInvitesPageRoute',
    page: MyInvitesPage,
  ),
  AutoRoute(
    path: 'invite_progress_page',
    name: 'InviteProgressPageRoute',
    page: InviteProgressPage,
  ),
  AutoRoute(
    path: 'notifications_page',
    name: 'NotificationsPageRoute',
    page: NotificationsPage,
  ),
  AutoRoute(
    path: 'analysis_page',
    name: 'AnalysisPageRoute',
    page: AnalysisPage,
  )
])
class $AppRouter {}
