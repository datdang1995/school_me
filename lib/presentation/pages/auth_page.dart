import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:school_me/application/auth/providers/email_provider.dart';
import 'package:school_me/application/auth/providers/password_provider.dart';

@RoutePage()
class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final validateMode = useState(AutovalidateMode.disabled);

    return Scaffold(
      body: Form(
        autovalidateMode: validateMode.value,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Input email',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: ref.read(emailProvider.notifier).onChanged,
                validator: ref.read(emailProvider.notifier).validate,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Input password',
                ),
                obscureText: true,
                obscuringCharacter: '*',
                onChanged: ref.read(passwordProvider.notifier).onChanged,
                validator: ref.read(passwordProvider.notifier).validate,
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  validateMode.value = AutovalidateMode.onUserInteraction;
                },
                child: const Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
