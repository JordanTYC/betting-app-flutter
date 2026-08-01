import 'package:fixtures/domain/contracts/match_contract.dart';
import 'package:fixtures/domain/entities/match.dart';

class GetMatchesStream {
  final MatchRepository contract;

  GetMatchesStream(this.contract);

  Stream<List<Match>> call() {
    return contract.getMatchesStream();
  }
}
