// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OrderService extends OrderService {
  _$OrderService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrderService;

  @override
  Future<Response<List<OrderModel>>> getAllOrders() {
    final Uri $url = Uri.parse('/pedidos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OrderModel>, OrderModel>($request);
  }

  @override
  Future<Response<OrderModel>> postOrder(Map<String, dynamic> orderPostBody) {
    final Uri $url = Uri.parse('/pedido/');
    final $body = orderPostBody;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<OrderModel, OrderModel>($request);
  }

  @override
  Future<Response<OrderModel>> putOrder(
    Map<String, dynamic> orderPostBody,
    double id,
  ) {
    final Uri $url = Uri.parse('/pedido/${id}');
    final $body = orderPostBody;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<OrderModel, OrderModel>($request);
  }
}
