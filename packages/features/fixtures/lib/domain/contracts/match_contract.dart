import 'package:fixtures/domain/entities/match.dart';

abstract interface class MatchRepository {
  Stream<List<Match>> getMatchesStream();
}
