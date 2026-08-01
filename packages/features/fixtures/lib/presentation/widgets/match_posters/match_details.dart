import 'package:flutter/material.dart';
import 'package:shared_ui/widgets/match_odds.dart';
import 'package:shared_ui/widgets/vs_flags.dart';
import 'package:fixtures/domain/entities/match.dart';

class MatchDetails extends StatelessWidget {
  final Match match;

  const MatchDetails({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      key: ValueKey(match.id), // obligatoire pour déclencher l'animation
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.primary,
                ),
                child: Text(
                  '${match.kickoffAt.hour.toString().padLeft(2, '0')}:${match.kickoffAt.minute.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    color: colors.onPrimary,
                    fontFamily: "Betclic",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                match.round,
                style: TextStyle(
                  color: colors.onPrimary,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VsFlags(radius: 25, team1: match.team1, team2: match.team2),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    match.team1.toUpperCase(),
                    style: TextStyle(
                      color: colors.onPrimary,
                      fontSize: 24,
                      fontFamily: "Betclic",
                      fontWeight: FontWeight.w700,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    match.team2.toUpperCase(),
                    style: TextStyle(
                      color: colors.onPrimary,
                      fontSize: 24,
                      fontFamily: "Betclic",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        MatchOdds(match: match),
      ],
    );
  }
}
