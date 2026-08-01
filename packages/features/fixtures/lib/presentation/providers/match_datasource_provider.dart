import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fixtures/data/datasources/local_match_datasource.dart';

part 'match_datasource_provider.g.dart';

@riverpod
LocalMatchDataSource matchDataSource(MatchDataSourceRef ref) {
  return LocalMatchDataSource();
}
