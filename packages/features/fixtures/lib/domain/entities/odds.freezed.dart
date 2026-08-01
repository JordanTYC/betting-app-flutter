// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'odds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Odds {

 String get id; String get label; double get value;
/// Create a copy of Odds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OddsCopyWith<Odds> get copyWith => _$OddsCopyWithImpl<Odds>(this as Odds, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Odds&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,value);

@override
String toString() {
  return 'Odds(id: $id, label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $OddsCopyWith<$Res>  {
  factory $OddsCopyWith(Odds value, $Res Function(Odds) _then) = _$OddsCopyWithImpl;
@useResult
$Res call({
 String id, String label, double value
});




}
/// @nodoc
class _$OddsCopyWithImpl<$Res>
    implements $OddsCopyWith<$Res> {
  _$OddsCopyWithImpl(this._self, this._then);

  final Odds _self;
  final $Res Function(Odds) _then;

/// Create a copy of Odds
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


/// Adds pattern-matching-related methods to [Odds].
extension OddsPatterns on Odds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Odds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Odds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Odds value)  $default,){
final _that = this;
switch (_that) {
case _Odds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Odds value)?  $default,){
final _that = this;
switch (_that) {
case _Odds() when $default != null:
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
case _Odds() when $default != null:
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
case _Odds():
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
case _Odds() when $default != null:
return $default(_that.id,_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _Odds implements Odds {
  const _Odds({required this.id, required this.label, required this.value});
  

@override final  String id;
@override final  String label;
@override final  double value;

/// Create a copy of Odds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OddsCopyWith<_Odds> get copyWith => __$OddsCopyWithImpl<_Odds>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Odds&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,value);

@override
String toString() {
  return 'Odds(id: $id, label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OddsCopyWith<$Res> implements $OddsCopyWith<$Res> {
  factory _$OddsCopyWith(_Odds value, $Res Function(_Odds) _then) = __$OddsCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, double value
});




}
/// @nodoc
class __$OddsCopyWithImpl<$Res>
    implements _$OddsCopyWith<$Res> {
  __$OddsCopyWithImpl(this._self, this._then);

  final _Odds _self;
  final $Res Function(_Odds) _then;

/// Create a copy of Odds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? value = null,}) {
  return _then(_Odds(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
