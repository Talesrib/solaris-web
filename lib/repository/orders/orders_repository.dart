import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/network/orders/network_service.dart';
import 'package:sollaris_web_flutter/view/components/display_toast.dart';

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

      displayToast('Pedido criado com sucesso', success: true);
    } catch (e) {
      debugPrint(e.toString());

      displayToast('Erro ao criar pedido', success: false);
    }
  }
}
