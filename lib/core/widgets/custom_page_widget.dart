import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_app_bar.dart';

import '../utlis/app_constants.dart';

class CustomPageWidget extends StatefulWidget {
  const CustomPageWidget({
    super.key,
    required this.body,
    required this.appBarTitle,
    required this.leading,
    required this.trailing,
    this.centerTitle = false,
  });

  final Widget body;
  final String appBarTitle;
  final Widget leading;
  final Widget trailing;
  final bool centerTitle;
  @override
  State<CustomPageWidget> createState() => _CustomPageWidgetState();
}

class _CustomPageWidgetState extends State<CustomPageWidget> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: widget.appBarTitle,
          leading: widget.leading,
          trailing: widget.trailing,
          scrollController: _scrollController,
        ),

        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.kMainPagePadding,
              ),
              child: widget.body,
            ),
          ),
        ),
      ],
    );
  }
}
