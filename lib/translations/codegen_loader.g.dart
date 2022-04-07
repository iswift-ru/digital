// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru_RU = {
  "search": "Поиск по номеру заказа",
  "favorite": "У вашего избранного места появилась новая категория блюд",
  "macdonalds": "Макдоналдс",
  "gotocard": "Перейти в карточку места",
  "status": "Изменился статус заказа №13124",
  "injob": "В работе → Доставлен",
  "gotoorder": "Перейти в заказ",
  "viewEarly": "Показать более ранние"
};
static const Map<String,dynamic> en_US = {
  "search": "Поиск по номеру заказа",
  "favorite": "У вашего избранного места появилась новая категория блюд",
  "macdonalds": "Макдоналдс",
  "gotocard": "Перейти в карточку места",
  "status": "Изменился статус заказа №13124",
  "injob": "В работе → Доставлен",
  "gotoorder": "Перейти в заказ",
  "viewEarly": "Показать более ранние"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru_RU": ru_RU, "en_US": en_US};
}
