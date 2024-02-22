import 'package:flutter/material.dart';

const _minExent = 50.0;
const _maxExent = 130.0;

const _iconMaxSize = 50;
const _iconMinSize = 30;

const _textMaxSize = 28;
const _textMinSize = 22;

const _textMaxTopPosition = 70;
const _textMinTopPosition = 0;

const _textMaxLeftPosition = 0;
const _textMinLeftPosition = 44;

class OnboardingSliverTopBar extends SliverPersistentHeaderDelegate {
  final IconData icon;
  final String title;

  const OnboardingSliverTopBar({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final iconPercentage = shrinkOffset.clamp(0, _maxExent - _minExent) / (_maxExent - _minExent);
    final textPercentage = shrinkOffset.clamp(0, _maxExent - _minExent) / (_maxExent - _minExent);

    final iconSize = _iconMinSize + (_iconMaxSize - _iconMinSize) * (1 - iconPercentage);
    final textSize = _textMinSize + (_textMaxSize - _textMinSize) * (1 - textPercentage);
    final textTopPosition = _textMinTopPosition + (_textMaxTopPosition - _textMinTopPosition) * (1 - textPercentage);
    final textLeftPosition =
        _textMinLeftPosition + (_textMaxLeftPosition - _textMinLeftPosition) * (1 - textPercentage);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Icon(
              icon,
              size: iconSize,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Positioned(
            top: textTopPosition,
            left: textLeftPosition,
            child: Text(
              title,
              style: TextStyle(fontSize: textSize),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => _maxExent;

  @override
  double get minExtent => _minExent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
