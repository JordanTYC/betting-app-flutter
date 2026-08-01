import 'package:fixtures/data/models/match_model.dart';

abstract class MatchDataSource {
  Stream<List<MatchModel>> getMatchesStream();
}
