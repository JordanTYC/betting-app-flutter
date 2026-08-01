// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OddsModel {

 String get id; String get label; double get value;
/// Create a copy of OddsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OddsModelCopyWith<OddsModel> get copyWith => _$OddsModelCopyWithImpl<OddsModel>(this as OddsModel, _$identity);

  /// Serializes this OddsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OddsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,value);

@override
String toString() {
  return 'OddsModel(id: $id, label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $OddsModelCopyWith<$Res>  {
  factory $OddsModelCopyWith(OddsModel value, $Res Function(OddsModel) _then) = _$OddsModelCopyWithImpl;
@useResult
$Res call({
 String id, String label, double value
});




}
/// @nodoc
class _$OddsModelCopyWithImpl<$Res>
    implements $OddsModelCopyWith<$Res> {
  _$OddsModelCopyWithImpl(this._self, this._then);

  final OddsModel _self;
  final $Res Function(OddsModel) _then;

/// Create a copy of OddsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OddsModel].
extension OddsModelPatterns on OddsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OddsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OddsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OddsModel value)  $default,){
final _that = this;
switch (_that) {
case _OddsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OddsModel value)?  $default,){
final _that = this;
switch (_that) {
case _OddsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OddsModel() when $default != null:
return $default(_that.id,_that.label,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  double value)  $default,) {final _that = this;
switch (_that) {
case _OddsModel():
return $default(_that.id,_that.label,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  double value)?  $default,) {final _that = this;
switch (_that) {
case _OddsModel() when $default != null:
return $default(_that.id,_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OddsModel implements OddsModel {
  const _OddsModel({required this.id, required this.label, required this.value});
  factory _OddsModel.fromJson(Map<String, dynamic> json) => _$OddsModelFromJson(json);

@override final  String id;
@override final  String label;
@override final  double value;

/// Create a copy of OddsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OddsModelCopyWith<_OddsModel> get copyWith => __$OddsModelCopyWithImpl<_OddsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OddsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OddsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,value);

@override
String toString() {
  return 'OddsModel(id: $id, label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OddsModelCopyWith<$Res> implements $OddsModelCopyWith<$Res> {
  factory _$OddsModelCopyWith(_OddsModel value, $Res Function(_OddsModel) _then) = __$OddsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, double value
});




}
/// @nodoc
class __$OddsModelCopyWithImpl<$Res>
    implements _$OddsModelCopyWith<$Res> {
  __$OddsModelCopyWithImpl(this._self, this._then);

  final _OddsModel _self;
  final $Res Function(_OddsModel) _then;

/// Create a copy of OddsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? value = null,}) {
  return _then(_OddsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
