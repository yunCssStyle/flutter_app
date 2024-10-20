import 'package:freezed_annotation/freezed_annotation.dart';
part 'layout.freezed.dart';
part 'layout.g.dart';

@freezed
class LayoutModel with _$LayoutModel {
  const factory LayoutModel({
    required bool isMyAppBar,
    required bool isBottomNavigationBar,
  }) = _LayoutModel;
  factory LayoutModel.fromJson(Map<String, dynamic> json) =>
      _$LayoutModelFromJson(json);
}
