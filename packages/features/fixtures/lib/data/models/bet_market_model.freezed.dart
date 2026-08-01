// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet_market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BetMarketModel {

 String get id; String get name; List<OddsModel> get odds;
/// Create a copy of BetMarketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BetMarketModelCopyWith<BetMarketModel> get copyWith => _$BetMarketModelCopyWithImpl<BetMarketModel>(this as BetMarketModel, _$identity);

  /// Serializes this BetMarketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BetMarketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.odds, odds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(odds));

@override
String toString() {
  return 'BetMarketModel(id: $id, name: $name, odds: $odds)';
}


}

/// @nodoc
abstract mixin class $BetMarketModelCopyWith<$Res>  {
  factory $BetMarketModelCopyWith(BetMarketModel value, $Res Function(BetMarketModel) _then) = _$BetMarketModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<OddsModel> odds
});




}
/// @nodoc
class _$BetMarketModelCopyWithImpl<$Res>
    implements $BetMarketModelCopyWith<$Res> {
  _$BetMarketModelCopyWithImpl(this._self, this._then);

  final BetMarketModel _self;
  final $Res Function(BetMarketModel) _then;

/// Create a copy of BetMarketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? odds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,odds: null == odds ? _self.odds : odds // ignore: cast_nullable_to_non_nullable
as List<OddsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BetMarketModel].
extension BetMarketModelPatterns on BetMarketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BetMarketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BetMarketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BetMarketModel value)  $default,){
final _that = this;
switch (_that) {
case _BetMarketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BetMarketModel value)?  $default,){
final _that = this;
switch (_that) {
case _BetMarketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<OddsModel> odds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BetMarketModel() when $default != null:
return $default(_that.id,_that.name,_that.odds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<OddsModel> odds)  $default,) {final _that = this;
switch (_that) {
case _BetMarketModel():
return $default(_that.id,_that.name,_that.odds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<OddsModel> odds)?  $default,) {final _that = this;
switch (_that) {
case _BetMarketModel() when $default != null:
return $default(_that.id,_that.name,_that.odds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BetMarketModel implements BetMarketModel {
  const _BetMarketModel({required this.id, required this.name, required final  List<OddsModel> odds}): _odds = odds;
  factory _BetMarketModel.fromJson(Map<String, dynamic> json) => _$BetMarketModelFromJson(json);

@override final  String id;
@override final  String name;
 final  List<OddsModel> _odds;
@override List<OddsModel> get odds {
  if (_odds is EqualUnmodifiableListView) return _odds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_odds);
}


/// Create a copy of BetMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BetMarketModelCopyWith<_BetMarketModel> get copyWith => __$BetMarketModelCopyWithImpl<_BetMarketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BetMarketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BetMarketModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._odds, _odds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_odds));

@override
String toString() {
  return 'BetMarketModel(id: $id, name: $name, odds: $odds)';
}


}

/// @nodoc
abstract mixin class _$BetMarketModelCopyWith<$Res> implements $BetMarketModelCopyWith<$Res> {
  factory _$BetMarketModelCopyWith(_BetMarketModel value, $Res Function(_BetMarketModel) _then) = __$BetMarketModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<OddsModel> odds
});




}
/// @nodoc
class __$BetMarketModelCopyWithImpl<$Res>
    implements _$BetMarketModelCopyWith<$Res> {
  __$BetMarketModelCopyWithImpl(this._self, this._then);

  final _BetMarketModel _self;
  final $Res Function(_BetMarketModel) _then;

/// Create a copy of BetMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? odds = null,}) {
  return _then(_BetMarketModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,odds: null == odds ? _self._odds : odds // ignore: cast_nullable_to_non_nullable
as List<OddsModel>,
  ));
}


}

// dart format on
