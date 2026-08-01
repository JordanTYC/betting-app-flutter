import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fixtures/data/models/match_model.dart';
import 'match_datasource.dart';

class LocalMatchDataSource implements MatchDataSource {
  final _controller = StreamController<List<MatchModel>>.broadcast();
  final _random = Random();

  late List<MatchModel> _matches;
  Timer? _timer;

  LocalMatchDataSource() {
    _init();
  }

  Future<void> _init() async {
    _matches = await _loadFromJson();
    _startSimulation();
  }

  @override
  Stream<List<MatchModel>> getMatchesStream() {
    return _controller.stream;
  }

  Future<List<MatchModel>> _loadFromJson() async {
    final jsonString = await rootBundle.loadString(
      'packages/fixtures/assets/matches.json',
    );

    final List<dynamic> jsonList = jsonDecode(jsonString);

    return jsonList
        .map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  void _startSimulation() {
    _controller.add(_matches);

    _timer = Timer.periodic(const Duration(seconds: 7), (_) {
      _updateOdds();
      _controller.add(_matches);
    });
  }

  void _updateOdds() {
    _matches = _matches.map((match) {
      return match.copyWith(
        betMarkets: match.betMarkets.map((market) {
          return market.copyWith(
            odds: market.odds.map((odd) {
              return odd.copyWith(value: _randomOdds(odd.value));
            }).toList(),
          );
        }).toList(),

        status: "live",
      );
    }).toList();
  }

  double _randomOdds(double value) {
    final change = (_random.nextDouble() - 0.5) * 0.3;
    final newValue = value + change;

    return double.parse(newValue.clamp(1.1, 10.0).toStringAsFixed(2));
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}
