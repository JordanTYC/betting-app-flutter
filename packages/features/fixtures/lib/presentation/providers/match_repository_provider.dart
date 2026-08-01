import 'package:fixtures/data/repositories/match_repository.dart';
import 'package:fixtures/domain/contracts/match_contract.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'match_datasource_provider.dart';

part 'match_repository_provider.g.dart';

@riverpod
MatchRepository matchRepository(MatchRepositoryRef ref) {
  return MatchRepositoryImpl(dataSource: ref.watch(matchDataSourceProvider));
}
