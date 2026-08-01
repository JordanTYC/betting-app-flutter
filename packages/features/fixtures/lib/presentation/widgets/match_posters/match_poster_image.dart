import 'package:flutter/material.dart';
import 'package:shared_ui/team_colors.dart';
import 'package:shared_ui/teams_theme.dart';

class MatchPosterImage extends StatelessWidget {
  final String imageUrl;
  final String team;

  const MatchPosterImage({
    super.key,
    required this.imageUrl,
    required this.team,
  });

  @override
  Widget build(BuildContext context) {
    final colors =
        teams[team] ??
        TeamColors(
          primary: Colors.blue,
          secondary: Colors.blueAccent,
          accent: Colors.cyan,
          flag: '',
        );

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(color: colors.primary),
        FractionallySizedBox(
          heightFactor: 0.7,
          alignment: Alignment.topCenter,
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
                stops: [0.45, 1],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (_, _, _) {
                return const SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
