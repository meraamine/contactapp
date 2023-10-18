import 'package:contact_app/view/add_contact_page.dart';
import 'package:contact_app/view/detailpage.dart';
import 'package:contact_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



void main() {
  runApp( MyApp());
}

GoRouter router() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  HomePage(),
        ),
      GoRoute(
         path: '/addContactPage',
        builder: (context, state) =>  AddContactPage()
         ),
        GoRoute(
        path: '/detailpage',
       builder: (context, state) =>  DetailPage(),
      ),
      // GoRoute(
      //   path: '/calm',
      //   builder: (context, state) => const CalmDownScreen(),
      // ),
      // GoRoute(
      //   path: '/contact',
      //   builder: (context, state) => const ContactMeScreen(),
      // ),
    ],
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router(),
      title: 'Contact App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      //home:  MyHomePage(),
    );
  }
}

