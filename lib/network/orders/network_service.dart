import 'package:chopper/chopper.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

part 'network_service.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class OrderService extends ChopperService {
  static OrderService create({
    required Iterable<dynamic> interceptors,
    required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(baseUrl),
      interceptors: interceptors,
      services: [_$OrderService()],
      converter: JsonToTypeConverter(),
    );
    return _$OrderService(client);
  }

  @Get(path: '/pedidos')
  Future<Response<List<OrderModel>>> getAllOrders();

  @Post(path: '/pedido/')
  Future<Response<OrderModel>> postOrder(
    @Body() Map<String, dynamic> orderPostBody,
  );

  @Put(path: '/pedido/{id}')
  Future<Response<OrderModel>> putOrder(
    @Body() Map<String, dynamic> orderPostBody,
    @Path() double id,
  );
}
