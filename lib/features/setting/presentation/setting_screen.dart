import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/features/setting/data/remote_data_source/setting_remote_data_source.dart';
import 'package:whisper/features/setting/data/repository/setting_repository_impl.dart';
import 'package:whisper/features/setting/presentation/bloc/setting_bloc.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return BlocProvider(
      create: (context) =>
          SettingBloc(SettingRepositoryImpl(SettingRemoteDataSource())),
      child: BlocListener<SettingBloc, SettingState>(
        listenWhen: (previous, current) => current.isLoggingOut,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Successfully logged out')),
          );
          Navigator.of(context).pushNamedAndRemoveUntil(
            RoutesManager.loginScreen,
            (route) => false,
          );
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Settings')),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: user?.photoURL == null
                    ? null
                    : NetworkImage(user!.photoURL!),
                child: user?.photoURL == null
                    ? const Icon(Icons.person, size: 48)
                    : null,
              ),
              const SizedBox(height: 10),
              Text(
                user?.displayName ?? user?.email ?? 'Your profile',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Center(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManager.profileScreen);
                  },
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('Edit profile'),
                ),
              ),
              const SizedBox(height: 20),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Notifications'),
                secondary: const Icon(Icons.notifications_outlined),
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 48,
                child: BlocBuilder<SettingBloc, SettingState>(
                  builder: (context, state) {
                    return OutlinedButton.icon(
                      onPressed: () {
                        print('Logging out...');
                        context.read<SettingBloc>().add(SettingEvent.logOut());
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text('Log out'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
