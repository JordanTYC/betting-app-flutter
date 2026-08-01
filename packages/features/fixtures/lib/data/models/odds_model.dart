import 'package:freezed_annotation/freezed_annotation.dart';

part 'odds_model.freezed.dart';
part 'odds_model.g.dart';

@freezed
abstract class OddsModel with _$OddsModel {
  const factory OddsModel({
    required String id,
    required String label,
    required double value,
  }) = _OddsModel;

  factory OddsModel.fromJson(Map<String, dynamic> json) =>
      _$OddsModelFromJson(json);
}
