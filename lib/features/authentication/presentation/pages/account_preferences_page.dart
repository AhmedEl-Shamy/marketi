import 'package:flutter/material.dart';

import '../widgets/account_preferences/account_preferences_page_body.dart';

class AccountPreferencesPage extends StatelessWidget {
  const AccountPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountPreferencesPageBody(),
    );
  }
}
