

import 'package:hive/hive.dart';

class LocalColorService {

  late final Box<dynamic> _dataBox ;
  var _box ;

  Future<void> init(String name) async {
    _box = await Hive.openLazyBox<dynamic>('${name}_box');
  }

  Future<void> addData({required List<dynamic> data}) async {
    await _dataBox.clear();
    await _dataBox.addAll(data);
  }

  List<dynamic> getData() => _dataBox.values.toList();

}