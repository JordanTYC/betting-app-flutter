import 'package:fixtures/data/datasources/match_datasource.dart';
import 'package:fixtures/data/mappers/match_mapper.dart';
import 'package:fixtures/domain/contracts/match_contract.dart';
import 'package:fixtures/domain/entities/match.dart';

class MatchRepositoryImpl implements MatchRepository {
  const MatchRepositoryImpl({required this.dataSource});

  final MatchDataSource dataSource;

  @override
  Stream<List<Match>> getMatchesStream() {
    return dataSource.getMatchesStream().map(
      (models) => models.map(MatchMapper.fromModel).toList(),
    );
  }
}
