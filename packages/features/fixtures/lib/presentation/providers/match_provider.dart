import 'package:fixtures/presentation/providers/get_matches_usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fixtures/domain/entities/match.dart';

part 'match_provider.g.dart';

@riverpod
Stream<List<Match>> matches(MatchesRef ref) {
  final useCase = ref.watch(getMatchesUseCaseProvider);
  return useCase();
}
