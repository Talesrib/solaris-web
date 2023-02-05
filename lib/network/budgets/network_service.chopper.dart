// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$BudgetService extends BudgetService {
  _$BudgetService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BudgetService;

  @override
  Future<Response<List<BudgetModel>>> getAllBudgets() {
    final Uri $url = Uri.parse('/orcamentos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<BudgetModel>, BudgetModel>($request);
  }

  @override
  Future<Response<BudgetModel>> postBudget(
      Map<String, dynamic> budgetPostBody) {
    final Uri $url = Uri.parse('/orcamento/');
    final $body = budgetPostBody;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BudgetModel, BudgetModel>($request);
  }
}
