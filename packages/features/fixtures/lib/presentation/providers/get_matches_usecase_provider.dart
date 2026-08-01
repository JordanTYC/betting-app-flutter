import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fixtures/domain/usecases/get_matches_stream.dart';
import 'match_repository_provider.dart';

part 'get_matches_usecase_provider.g.dart';

@riverpod
GetMatchesStream getMatchesUseCase(GetMatchesUseCaseRef ref) {
  return GetMatchesStream(ref.watch(matchRepositoryProvider));
}
