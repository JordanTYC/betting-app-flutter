import 'package:fixtures/domain/contracts/match_contract.dart';
import 'package:fixtures/domain/entities/match.dart';

class FakeMatchRepository implements MatchRepository {
  FakeMatchRepository(this.stream);

  final Stream<List<Match>> stream;

  @override
  Stream<List<Match>> getMatchesStream() {
    return stream;
  }
}
