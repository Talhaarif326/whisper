import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/setting/setting_barrel.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final colors = Theme.of(context).colorScheme;

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
          body: AppScreenContent(
            child: ListView(
              padding: const EdgeInsets.all(AppTheme.screenInset),
              children: [
                CircleAvatar(
                  radius: AppTheme.avatarRadius,
                  backgroundColor: colors.primaryContainer,
                  foregroundColor: colors.primary,
                  backgroundImage: user?.photoURL == null
                      ? null
                      : NetworkImage(user!.photoURL!),
                  child: user?.photoURL == null
                      ? const Icon(Icons.person, size: AppTheme.avatarIconSize)
                      : null,
                ),
                SizedBox(height: AppSize.sizeDouble10),
                Text(
                  user?.displayName ?? user?.email ?? 'Your profile',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: AppSize.sizeDouble8),
                Center(
                  child: Text(
                    'Profile',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ),
                SizedBox(height: AppSize.sizeDouble20),
                Card(
                  margin: EdgeInsets.zero,
                  child: ValueListenableBuilder<ThemeMode>(
                    valueListenable: AppThemeManager.themeMode,
                    builder: (context, themeMode, child) => ListTile(
                      leading: const Icon(Icons.brightness_6_outlined),
                      title: const Text('Appearance'),
                      subtitle: const Text('Choose how the app looks'),
                      trailing: DropdownButton<ThemeMode>(
                        value: themeMode,
                        items: AppThemeManager.availableModes
                            .map(
                              (mode) => DropdownMenuItem(
                                value: mode,
                                child: Text(AppThemeManager.labelFor(mode)),
                              ),
                            )
                            .toList(),
                        onChanged: (mode) {
                          if (mode != null) {
                            AppThemeManager.setThemeMode(mode);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.sizeDouble20),
                BlocBuilder<SettingBloc, SettingState>(
                  builder: (context, state) {
                    return Card(
                      margin: EdgeInsets.zero,
                      child: SwitchListTile(
                        title: const Text('Notifications'),
                        secondary: const Icon(Icons.notifications_outlined),
                        value: state.notificationsEnabled,
                        onChanged: (value) {
                          context.read<SettingBloc>().add(
                            SettingEvent.enableOrDisableNotifications(
                              enabled: value,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: AppSize.sizeDouble24),
                SizedBox(
                  height: AppTheme.buttonHeight,
                  child: BlocBuilder<SettingBloc, SettingState>(
                    builder: (context, state) {
                      return ElevatedButton.icon(
                        onPressed: () {
                          context.read<SettingBloc>().add(
                            SettingEvent.logOut(),
                          );
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
      ),
    );
  }
}
