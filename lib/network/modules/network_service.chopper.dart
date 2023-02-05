// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ModuleService extends ModuleService {
  _$ModuleService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ModuleService;

  @override
  Future<Response<List<ModuleModel>>> getAllModules() {
    final Uri $url = Uri.parse('/modulos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ModuleModel>, ModuleModel>($request);
  }
}
