import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';
import 'package:sollaris_web_flutter/repository/orders/orders_repository.dart';

class OrderListController extends GetxController {

  final _repository = OrderRepository();

  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<OrderModel> orderList = <OrderModel>[];

  Future<void> loadOrders() async {
    final response = await _repository.getAllOrders();
    orderList = List.from(response);

    update();
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {}
}
