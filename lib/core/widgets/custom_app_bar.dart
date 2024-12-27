import 'package:flutter/material.dart';

import '../utlis/app_constants.dart';
import '../utlis/app_text_styles.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.scrollController,
    this.centerTitle = false,
    this.leading,
    this.trailing,
  });
  final String title;
  final bool centerTitle;
  final Widget? leading;
  final Widget? trailing;
  final ScrollController scrollController;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isScrolled = false;
  @override
  void initState() {
    addScrollListener();
    super.initState();
  }

  void addScrollListener() {
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset != 0) {
        setState(() {
          _isScrolled = true;
        });
      } else {
        setState(() {
          _isScrolled = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _isScrolled
          ? Theme.of(context).colorScheme.secondaryContainer
          : Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kMainPagePadding,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: widget.centerTitle
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        spacing: 10,
        children: [
          if (widget.leading != null)
            widget.leading!
          else if(widget.centerTitle)
            SizedBox.square(
              dimension: 42,
            ),
          Text(
            widget.title,
            style: AppTextStyles.kStyleM20,
          ),
          if (!widget.centerTitle) Spacer(),
          if (widget.trailing != null)
            widget.trailing!
          else if(widget.centerTitle)
            SizedBox.square(
              dimension: 42,
            ),
        ],
      ),
    );
  }
}
