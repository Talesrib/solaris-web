import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/model/modules/export_module_models.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonTypeParser {
  static const Map<Type, JsonFactory<dynamic>> factories = {
    ModuleModel: ModuleModel.fromJsonFactory,
    ClientModel: ClientModel.fromJsonFactory,
    BudgetModel: BudgetModel.fromJsonFactory,
    OrderModel: OrderModel.fromJsonFactory,
  };

  static dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);

    return entity;
  }

  static T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];

    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      throw UnsupportedError('Unsupported type: $T');
    }

    return jsonFactory(values);
  }

  static List<T> _decodeList<T>(Iterable<dynamic> values) => values
      .where((dynamic v) => v != null)
      .map((dynamic v) => decode<T>(v) as T)
      .toList();
}
