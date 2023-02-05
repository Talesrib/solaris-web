import 'package:chopper/chopper.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

part 'network_service.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class BudgetService extends ChopperService {
  static BudgetService create({
    required Iterable<dynamic> interceptors,
    required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(baseUrl),
      interceptors: interceptors,
      services: [_$BudgetService()],
      converter: JsonToTypeConverter(),
    );
    return _$BudgetService(client);
  }

  @Get(path: '/orcamentos')
  Future<Response<List<BudgetModel>>> getAllBudgets();

  @Post(path: '/orcamento/')
  Future<Response<BudgetModel>> postBudget(
    @Body() Map<String, dynamic> budgetPostBody,
  );
}
