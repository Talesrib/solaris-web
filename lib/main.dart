import 'package:flutter/material.dart';
import 'package:sollaris_web_flutter/app_binding.dart';
import 'package:sollaris_web_flutter/network/budgets/network_service.dart';
import 'package:sollaris_web_flutter/network/clients/network_service.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/network/orders/network_service.dart';
import 'package:sollaris_web_flutter/view/pages/main_page.dart';

void main() {
  registerNetworkServices();
  AppBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

void registerNetworkServices({
  String baseUrl = 'http://localhost:7070/api',
}) {
  GetIt.I
    ..registerLazySingleton(
      () => ModuleService.create(
        baseUrl: baseUrl,
        interceptors: [],
      ),
    )
    ..registerLazySingleton(
      () => ClientService.create(
        baseUrl: baseUrl,
        interceptors: [],
      ),
    )
    ..registerLazySingleton(
      () => BudgetService.create(
        baseUrl: baseUrl,
        interceptors: [],
      ),
    )
    ..registerLazySingleton(
      () => OrderService.create(
        baseUrl: baseUrl,
        interceptors: [],
      ),
    );
}
