import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/inverters/inverter_model.dart';
import 'package:sollaris_web_flutter/repository/inverters/inverters_repository.dart';

class InverterListController extends GetxController {

  final _repository = InvertersRepository();

  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<InverterModel> inverterList = <InverterModel>[];

  Future<void> loadInverter() async {
    final response = await _repository.getAllInverters();
    inverterList = List.from(response);

    update();
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {}
}
