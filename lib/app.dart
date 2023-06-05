import 'package:airplane_project/screens/my_flights_page.dart';
import 'package:airplane_project/screens/ticket_page.dart';
import 'package:airplane_project/screens/view_ticket_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyFlightsPage(),
        '/view': (context) => const ViewTicketPage(),
        '/ticket': (context) => const TicketPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
