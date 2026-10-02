import 'package:flutter/material.dart';
import 'package:whisper/core/app_colors/app_theme.dart';

class AppScreenContent extends StatelessWidget {
  const AppScreenContent({
    super.key,
    required this.child,
    this.scrollable = false,
    this.centerVertically = false,
  });

  final Widget child;
  final bool scrollable;
  final bool centerVertically;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: LayoutBuilder(
      builder: (context, constraints) {
        if (scrollable) {
          final verticalInset = centerVertically
              ? AppTheme.screenInset * 2
              : 0.0;
          final minHeight = constraints.maxHeight > verticalInset
              ? constraints.maxHeight - verticalInset
              : 0.0;

          return SingleChildScrollView(
            padding: centerVertically
                ? const EdgeInsets.all(AppTheme.screenInset)
                : EdgeInsets.zero,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: minHeight),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: AppTheme.contentWidth,
                  ),
                  child: child,
                ),
              ),
            ),
          );
        }

        return Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppTheme.contentWidth + AppTheme.screenInset * 2,
            ),
            child: child,
          ),
        );
      },
    ),
  );
}
