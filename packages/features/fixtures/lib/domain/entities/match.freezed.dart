// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Match {

 String get id; String get competition; String get round; DateTime get kickoffAt; String get team1; String get team2; int get team1Score; int get team2Score; String get imageUrl; String get alternativeImageUrl; MatchStatus get status; String get sport; List<BetMarket> get betMarkets;
/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchCopyWith<Match> get copyWith => _$MatchCopyWithImpl<Match>(this as Match, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Match&&(identical(other.id, id) || other.id == id)&&(identical(other.competition, competition) || other.competition == competition)&&(identical(other.round, round) || other.round == round)&&(identical(other.kickoffAt, kickoffAt) || other.kickoffAt == kickoffAt)&&(identical(other.team1, team1) || other.team1 == team1)&&(identical(other.team2, team2) || other.team2 == team2)&&(identical(other.team1Score, team1Score) || other.team1Score == team1Score)&&(identical(other.team2Score, team2Score) || other.team2Score == team2Score)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.alternativeImageUrl, alternativeImageUrl) || other.alternativeImageUrl == alternativeImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sport, sport) || other.sport == sport)&&const DeepCollectionEquality().equals(other.betMarkets, betMarkets));
}


@override
int get hashCode => Object.hash(runtimeType,id,competition,round,kickoffAt,team1,team2,team1Score,team2Score,imageUrl,alternativeImageUrl,status,sport,const DeepCollectionEquality().hash(betMarkets));

@override
String toString() {
  return 'Match(id: $id, competition: $competition, round: $round, kickoffAt: $kickoffAt, team1: $team1, team2: $team2, team1Score: $team1Score, team2Score: $team2Score, imageUrl: $imageUrl, alternativeImageUrl: $alternativeImageUrl, status: $status, sport: $sport, betMarkets: $betMarkets)';
}


}

/// @nodoc
abstract mixin class $MatchCopyWith<$Res>  {
  factory $MatchCopyWith(Match value, $Res Function(Match) _then) = _$MatchCopyWithImpl;
@useResult
$Res call({
 String id, String competition, String round, DateTime kickoffAt, String team1, String team2, int team1Score, int team2Score, String imageUrl, String alternativeImageUrl, MatchStatus status, String sport, List<BetMarket> betMarkets
});




}
/// @nodoc
class _$MatchCopyWithImpl<$Res>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._self, this._then);

  final Match _self;
  final $Res Function(Match) _then;

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? competition = null,Object? round = null,Object? kickoffAt = null,Object? team1 = null,Object? team2 = null,Object? team1Score = null,Object? team2Score = null,Object? imageUrl = null,Object? alternativeImageUrl = null,Object? status = null,Object? sport = null,Object? betMarkets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,competition: null == competition ? _self.competition : competition // ignore: cast_nullable_to_non_nullable
as String,round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as String,kickoffAt: null == kickoffAt ? _self.kickoffAt : kickoffAt // ignore: cast_nullable_to_non_nullable
as DateTime,team1: null == team1 ? _self.team1 : team1 // ignore: cast_nullable_to_non_nullable
as String,team2: null == team2 ? _self.team2 : team2 // ignore: cast_nullable_to_non_nullable
as String,team1Score: null == team1Score ? _self.team1Score : team1Score // ignore: cast_nullable_to_non_nullable
as int,team2Score: null == team2Score ? _self.team2Score : team2Score // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,alternativeImageUrl: null == alternativeImageUrl ? _self.alternativeImageUrl : alternativeImageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MatchStatus,sport: null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as String,betMarkets: null == betMarkets ? _self.betMarkets : betMarkets // ignore: cast_nullable_to_non_nullable
as List<BetMarket>,
  ));
}

}


/// Adds pattern-matching-related methods to [Match].
extension MatchPatterns on Match {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Match value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Match() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Match value)  $default,){
final _that = this;
switch (_that) {
case _Match():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Match value)?  $default,){
final _that = this;
switch (_that) {
case _Match() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String competition,  String round,  DateTime kickoffAt,  String team1,  String team2,  int team1Score,  int team2Score,  String imageUrl,  String alternativeImageUrl,  MatchStatus status,  String sport,  List<BetMarket> betMarkets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Match() when $default != null:
return $default(_that.id,_that.competition,_that.round,_that.kickoffAt,_that.team1,_that.team2,_that.team1Score,_that.team2Score,_that.imageUrl,_that.alternativeImageUrl,_that.status,_that.sport,_that.betMarkets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String competition,  String round,  DateTime kickoffAt,  String team1,  String team2,  int team1Score,  int team2Score,  String imageUrl,  String alternativeImageUrl,  MatchStatus status,  String sport,  List<BetMarket> betMarkets)  $default,) {final _that = this;
switch (_that) {
case _Match():
return $default(_that.id,_that.competition,_that.round,_that.kickoffAt,_that.team1,_that.team2,_that.team1Score,_that.team2Score,_that.imageUrl,_that.alternativeImageUrl,_that.status,_that.sport,_that.betMarkets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String competition,  String round,  DateTime kickoffAt,  String team1,  String team2,  int team1Score,  int team2Score,  String imageUrl,  String alternativeImageUrl,  MatchStatus status,  String sport,  List<BetMarket> betMarkets)?  $default,) {final _that = this;
switch (_that) {
case _Match() when $default != null:
return $default(_that.id,_that.competition,_that.round,_that.kickoffAt,_that.team1,_that.team2,_that.team1Score,_that.team2Score,_that.imageUrl,_that.alternativeImageUrl,_that.status,_that.sport,_that.betMarkets);case _:
  return null;

}
}

}

/// @nodoc


class _Match extends Match {
  const _Match({required this.id, required this.competition, required this.round, required this.kickoffAt, required this.team1, required this.team2, required this.team1Score, required this.team2Score, required this.imageUrl, required this.alternativeImageUrl, required this.status, required this.sport, required final  List<BetMarket> betMarkets}): _betMarkets = betMarkets,super._();
  

@override final  String id;
@override final  String competition;
@override final  String round;
@override final  DateTime kickoffAt;
@override final  String team1;
@override final  String team2;
@override final  int team1Score;
@override final  int team2Score;
@override final  String imageUrl;
@override final  String alternativeImageUrl;
@override final  MatchStatus status;
@override final  String sport;
 final  List<BetMarket> _betMarkets;
@override List<BetMarket> get betMarkets {
  if (_betMarkets is EqualUnmodifiableListView) return _betMarkets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_betMarkets);
}


/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchCopyWith<_Match> get copyWith => __$MatchCopyWithImpl<_Match>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Match&&(identical(other.id, id) || other.id == id)&&(identical(other.competition, competition) || other.competition == competition)&&(identical(other.round, round) || other.round == round)&&(identical(other.kickoffAt, kickoffAt) || other.kickoffAt == kickoffAt)&&(identical(other.team1, team1) || other.team1 == team1)&&(identical(other.team2, team2) || other.team2 == team2)&&(identical(other.team1Score, team1Score) || other.team1Score == team1Score)&&(identical(other.team2Score, team2Score) || other.team2Score == team2Score)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.alternativeImageUrl, alternativeImageUrl) || other.alternativeImageUrl == alternativeImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sport, sport) || other.sport == sport)&&const DeepCollectionEquality().equals(other._betMarkets, _betMarkets));
}


@override
int get hashCode => Object.hash(runtimeType,id,competition,round,kickoffAt,team1,team2,team1Score,team2Score,imageUrl,alternativeImageUrl,status,sport,const DeepCollectionEquality().hash(_betMarkets));

@override
String toString() {
  return 'Match(id: $id, competition: $competition, round: $round, kickoffAt: $kickoffAt, team1: $team1, team2: $team2, team1Score: $team1Score, team2Score: $team2Score, imageUrl: $imageUrl, alternativeImageUrl: $alternativeImageUrl, status: $status, sport: $sport, betMarkets: $betMarkets)';
}


}

/// @nodoc
abstract mixin class _$MatchCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$MatchCopyWith(_Match value, $Res Function(_Match) _then) = __$MatchCopyWithImpl;
@override @useResult
$Res call({
 String id, String competition, String round, DateTime kickoffAt, String team1, String team2, int team1Score, int team2Score, String imageUrl, String alternativeImageUrl, MatchStatus status, String sport, List<BetMarket> betMarkets
});




}
/// @nodoc
class __$MatchCopyWithImpl<$Res>
    implements _$MatchCopyWith<$Res> {
  __$MatchCopyWithImpl(this._self, this._then);

  final _Match _self;
  final $Res Function(_Match) _then;

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? competition = null,Object? round = null,Object? kickoffAt = null,Object? team1 = null,Object? team2 = null,Object? team1Score = null,Object? team2Score = null,Object? imageUrl = null,Object? alternativeImageUrl = null,Object? status = null,Object? sport = null,Object? betMarkets = null,}) {
  return _then(_Match(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,competition: null == competition ? _self.competition : competition // ignore: cast_nullable_to_non_nullable
as String,round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as String,kickoffAt: null == kickoffAt ? _self.kickoffAt : kickoffAt // ignore: cast_nullable_to_non_nullable
as DateTime,team1: null == team1 ? _self.team1 : team1 // ignore: cast_nullable_to_non_nullable
as String,team2: null == team2 ? _self.team2 : team2 // ignore: cast_nullable_to_non_nullable
as String,team1Score: null == team1Score ? _self.team1Score : team1Score // ignore: cast_nullable_to_non_nullable
as int,team2Score: null == team2Score ? _self.team2Score : team2Score // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,alternativeImageUrl: null == alternativeImageUrl ? _self.alternativeImageUrl : alternativeImageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MatchStatus,sport: null == sport ? _self.sport : sport // ignore: cast_nullable_to_non_nullable
as String,betMarkets: null == betMarkets ? _self._betMarkets : betMarkets // ignore: cast_nullable_to_non_nullable
as List<BetMarket>,
  ));
}


}

// dart format on
