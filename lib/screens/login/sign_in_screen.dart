import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/constants/spacers.dart';
import 'package:netflix_clone/common/constants/strings.dart';
import 'package:netflix_clone/common/theme/text.dart';
import 'package:netflix_clone/common/theme/theme.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;

    return Scaffold(
      body: SafeArea(
        minimum: PaddingManager.defaultSafeAreaAll,
        child: LayoutBuilder(
          builder: (context, constraints){
            return Stack(
              children: [
                SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight
                    ),
                    child: IntrinsicHeight(
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SpacerManager.height86,
                            Text(
                              StringManager.login,
                              style: theme.headlineMedium.primaryWhite.semiBold,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
