import 'package:freezed_annotation/freezed_annotation.dart';

part 'product2.freezed.dart';
part 'product2.g.dart';

@freezed
class Product2 with _$Product2 {
  const factory Product2({
    required String name,
    required int price,
  }) = _Product2;

  factory Product2.fromJson(Map<String, dynamic> json) =>
      _$Product2FromJson(json);
}
