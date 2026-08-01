import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/presentation/widgets/odd_button_connector.dart';
import 'package:flutter/material.dart';
import 'package:shared_ui/widgets/odd_button.dart';
import 'package:styles/odd_probability_color.dart';

class MatchOdds extends StatelessWidget {
  final Match match;

  const MatchOdds({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    final market = match.vsBetMarket;

    if (market == null || market.odds.length < 3) {
      return const SizedBox();
    }
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: OddButtonConnector(
                match: match,
                odd: match.vsBetMarket!.odds[0],
                slant: SlantSide.left,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: OddButtonConnector(
                match: match,
                odd: match.vsBetMarket!.odds[1],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: OddButtonConnector(
                match: match,
                odd: match.vsBetMarket!.odds[2],
                slant: SlantSide.right,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: OddConfidenceBar(odd: match.vsBetMarket!.odds[0].value),
              ),
              SizedBox(width: 30),
              Expanded(
                child: OddConfidenceBar(odd: match.vsBetMarket!.odds[1].value),
              ),
              SizedBox(width: 30),
              Expanded(
                child: OddConfidenceBar(odd: match.vsBetMarket!.odds[2].value),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OddConfidenceBar extends StatelessWidget {
  final double odd;

  const OddConfidenceBar({super.key, required this.odd});

  @override
  Widget build(BuildContext context) {
    final confidence = (1 / odd).clamp(0.0, 1.0);

    return Container(
      height: 4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: confidence,
        child: Container(
          decoration: BoxDecoration(
            color: getOddProbabilityColor(context, odd),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
