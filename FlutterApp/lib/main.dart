import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/login.dart';
import 'pages/history.dart';
import 'pages/get_started.dart';
import 'pages/create_account.dart';
import 'pages/dashboard.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
          '/': (context) => home_page(),
          '/get_started': (context) => get_started(),
          '/login': (context) => Login(),
          '/profile': (context) => profile(),
          '/create_account': (context) => create_account(),
          '/history': (context) => history(),
          '/dashboard': (context) => dashboard(),
    }
));