// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet_market.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BetMarket {

 String get id; String get name; List<Odds> get odds;
/// Create a copy of BetMarket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BetMarketCopyWith<BetMarket> get copyWith => _$BetMarketCopyWithImpl<BetMarket>(this as BetMarket, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BetMarket&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.odds, odds));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(odds));

@override
String toString() {
  return 'BetMarket(id: $id, name: $name, odds: $odds)';
}


}

/// @nodoc
abstract mixin class $BetMarketCopyWith<$Res>  {
  factory $BetMarketCopyWith(BetMarket value, $Res Function(BetMarket) _then) = _$BetMarketCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<Odds> odds
});




}
/// @nodoc
class _$BetMarketCopyWithImpl<$Res>
    implements $BetMarketCopyWith<$Res> {
  _$BetMarketCopyWithImpl(this._self, this._then);

  final BetMarket _self;
  final $Res Function(BetMarket) _then;

/// Create a copy of BetMarket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? odds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,odds: null == odds ? _self.odds : odds // ignore: cast_nullable_to_non_nullable
as List<Odds>,
  ));
}

}


/// Adds pattern-matching-related methods to [BetMarket].
extension BetMarketPatterns on BetMarket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BetMarket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BetMarket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BetMarket value)  $default,){
final _that = this;
switch (_that) {
case _BetMarket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BetMarket value)?  $default,){
final _that = this;
switch (_that) {
case _BetMarket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<Odds> odds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BetMarket() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<Odds> odds)  $default,) {final _that = this;
switch (_that) {
case _BetMarket():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<Odds> odds)?  $default,) {final _that = this;
switch (_that) {
case _BetMarket() when $default != null:
return $default(_that.id,_that.name,_that.odds);case _:
  return null;

}
}

}

/// @nodoc


class _BetMarket implements BetMarket {
  const _BetMarket({required this.id, required this.name, required final  List<Odds> odds}): _odds = odds;
  

@override final  String id;
@override final  String name;
 final  List<Odds> _odds;
@override List<Odds> get odds {
  if (_odds is EqualUnmodifiableListView) return _odds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_odds);
}


/// Create a copy of BetMarket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BetMarketCopyWith<_BetMarket> get copyWith => __$BetMarketCopyWithImpl<_BetMarket>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BetMarket&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._odds, _odds));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_odds));

@override
String toString() {
  return 'BetMarket(id: $id, name: $name, odds: $odds)';
}


}

/// @nodoc
abstract mixin class _$BetMarketCopyWith<$Res> implements $BetMarketCopyWith<$Res> {
  factory _$BetMarketCopyWith(_BetMarket value, $Res Function(_BetMarket) _then) = __$BetMarketCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<Odds> odds
});




}
/// @nodoc
class __$BetMarketCopyWithImpl<$Res>
    implements _$BetMarketCopyWith<$Res> {
  __$BetMarketCopyWithImpl(this._self, this._then);

  final _BetMarket _self;
  final $Res Function(_BetMarket) _then;

/// Create a copy of BetMarket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? odds = null,}) {
  return _then(_BetMarket(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,odds: null == odds ? _self._odds : odds // ignore: cast_nullable_to_non_nullable
as List<Odds>,
  ));
}


}

// dart format on
