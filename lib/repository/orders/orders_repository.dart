import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/network/orders/network_service.dart';

class OrderRepository {
  OrderService get _orderService => GetIt.I<OrderService>();

  Future<List<OrderModel>> getAllOrders() async {
    try {
      final response = await _orderService.getAllOrders();
      return response.body!;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<void> postOrder(Map<String, dynamic> body) async {
    try {
      await _orderService.postOrder(body);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> putOrder(Map<String, dynamic> body, double id) async {
    try {
      await _orderService.putOrder(body, id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
