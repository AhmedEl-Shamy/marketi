import 'package:flutter/material.dart';

import '../widgets/change_password.dart/change_password_page_body.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangePasswordPageBody(),
    );
  }
}
