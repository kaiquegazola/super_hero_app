import 'package:flutter/material.dart';

class FadingTextWidget extends StatefulWidget {
  const FadingTextWidget({
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  _FadingTextState createState() => _FadingTextState();
}

class _FadingTextState extends State<FadingTextWidget>
    with TickerProviderStateMixin {
  final _characters = <MapEntry<String, Animation>>[];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    var start = 0.2;
    final duration = 0.6 / widget.text.length;
    for (var rune in widget.text.runes) {
      final character = String.fromCharCode(rune);
      final animation = Tween(
        begin: 0.5,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          curve: Interval(start, start + duration, curve: Curves.easeInOut),
          parent: _controller,
        ),
      );
      _characters.add(MapEntry(character, animation));
      start += duration;
    }

    _controller.repeat(
      reverse: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _characters
          .map(
            (entry) => FadeTransition(
              opacity: entry.value as Animation<double>,
              child: Text(
                entry.key,
                style: widget.style,
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
