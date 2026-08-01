// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shell_appbar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShellAppBarState {

 bool get visible; bool get showBackground;
/// Create a copy of ShellAppBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShellAppBarStateCopyWith<ShellAppBarState> get copyWith => _$ShellAppBarStateCopyWithImpl<ShellAppBarState>(this as ShellAppBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShellAppBarState&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.showBackground, showBackground) || other.showBackground == showBackground));
}


@override
int get hashCode => Object.hash(runtimeType,visible,showBackground);

@override
String toString() {
  return 'ShellAppBarState(visible: $visible, showBackground: $showBackground)';
}


}

/// @nodoc
abstract mixin class $ShellAppBarStateCopyWith<$Res>  {
  factory $ShellAppBarStateCopyWith(ShellAppBarState value, $Res Function(ShellAppBarState) _then) = _$ShellAppBarStateCopyWithImpl;
@useResult
$Res call({
 bool visible, bool showBackground
});




}
/// @nodoc
class _$ShellAppBarStateCopyWithImpl<$Res>
    implements $ShellAppBarStateCopyWith<$Res> {
  _$ShellAppBarStateCopyWithImpl(this._self, this._then);

  final ShellAppBarState _self;
  final $Res Function(ShellAppBarState) _then;

/// Create a copy of ShellAppBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visible = null,Object? showBackground = null,}) {
  return _then(_self.copyWith(
visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,showBackground: null == showBackground ? _self.showBackground : showBackground // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ShellAppBarState].
extension ShellAppBarStatePatterns on ShellAppBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShellAppBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShellAppBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShellAppBarState value)  $default,){
final _that = this;
switch (_that) {
case _ShellAppBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShellAppBarState value)?  $default,){
final _that = this;
switch (_that) {
case _ShellAppBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool visible,  bool showBackground)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShellAppBarState() when $default != null:
return $default(_that.visible,_that.showBackground);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool visible,  bool showBackground)  $default,) {final _that = this;
switch (_that) {
case _ShellAppBarState():
return $default(_that.visible,_that.showBackground);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool visible,  bool showBackground)?  $default,) {final _that = this;
switch (_that) {
case _ShellAppBarState() when $default != null:
return $default(_that.visible,_that.showBackground);case _:
  return null;

}
}

}

/// @nodoc


class _ShellAppBarState implements ShellAppBarState {
  const _ShellAppBarState({this.visible = true, this.showBackground = false});
  

@override@JsonKey() final  bool visible;
@override@JsonKey() final  bool showBackground;

/// Create a copy of ShellAppBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShellAppBarStateCopyWith<_ShellAppBarState> get copyWith => __$ShellAppBarStateCopyWithImpl<_ShellAppBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShellAppBarState&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.showBackground, showBackground) || other.showBackground == showBackground));
}


@override
int get hashCode => Object.hash(runtimeType,visible,showBackground);

@override
String toString() {
  return 'ShellAppBarState(visible: $visible, showBackground: $showBackground)';
}


}

/// @nodoc
abstract mixin class _$ShellAppBarStateCopyWith<$Res> implements $ShellAppBarStateCopyWith<$Res> {
  factory _$ShellAppBarStateCopyWith(_ShellAppBarState value, $Res Function(_ShellAppBarState) _then) = __$ShellAppBarStateCopyWithImpl;
@override @useResult
$Res call({
 bool visible, bool showBackground
});




}
/// @nodoc
class __$ShellAppBarStateCopyWithImpl<$Res>
    implements _$ShellAppBarStateCopyWith<$Res> {
  __$ShellAppBarStateCopyWithImpl(this._self, this._then);

  final _ShellAppBarState _self;
  final $Res Function(_ShellAppBarState) _then;

/// Create a copy of ShellAppBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visible = null,Object? showBackground = null,}) {
  return _then(_ShellAppBarState(
visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,showBackground: null == showBackground ? _self.showBackground : showBackground // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
