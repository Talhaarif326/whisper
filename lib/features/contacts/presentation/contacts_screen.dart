import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/contacts/contacts_barrel.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ContactBloc(ContactRepositoryImpl(ContactRemoteDataSource()))
            ..add(ContactEvent.onFetchedContacts()),
      child: Scaffold(
        body: AppScreenContent(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppTheme.screenInset,
                  AppPadding.padding24,
                  AppTheme.screenInset,
                  AppPadding.padding20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WHISPER',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w700,
                        letterSpacing: AppTheme.brandLetterSpacing,
                      ),
                    ),
                    const SizedBox(height: AppPadding.padding8),
                    Text(
                      'Chats',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: AppPadding.padding8),
                    Text(
                      'Your people, one message away.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.screenInset,
                ),
                child: BlocBuilder<ContactBloc, ContactState>(
                  builder: (context, state) {
                    final currentUserId =
                        FirebaseAuth.instance.currentUser?.uid;
                    final contacts = state.contacts
                        .where((contact) => contact['uid'] != currentUserId)
                        .toList();

                    return Row(
                      children: [
                        Text(
                          'CONTACTS',
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        Text(
                          '${contacts.length} ${contacts.length == 1 ? 'contact' : 'contacts'}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: AppPadding.padding8),
              Expanded(
                child: BlocBuilder<ContactBloc, ContactState>(
                  builder: (context, state) {
                    final currentUserId =
                        FirebaseAuth.instance.currentUser?.uid;
                    final contacts = state.contacts
                        .where((contact) => contact['uid'] != currentUserId)
                        .toList();

                    if (contacts.isEmpty) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(AppTheme.screenInset),
                          child: Text(
                            'No contacts yet.',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                ),
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.screenInset,
                      ),
                      itemCount: contacts.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: AppPadding.padding8),
                      itemBuilder: (context, index) {
                        final contact = contacts[index];
                        final name = contact['name'] as String? ?? 'Unknown';
                        final email = contact['email'] as String? ?? '';
                        final colorScheme = Theme.of(context).colorScheme;

                        return InkWell(
                          borderRadius: BorderRadius.circular(
                            AppTheme.cornerRadius,
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RoutesManager.chatScreen,
                              arguments: ChatScreenArg(
                                recipiantName: name,
                                recipiantID: contact['uid'] as String,
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.padding10,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: AppTheme.contactAvatarRadius,
                                  backgroundColor: colorScheme.primaryContainer,
                                  foregroundColor:
                                      colorScheme.onPrimaryContainer,
                                  child: Text(
                                    _initials(name),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: colorScheme.onPrimaryContainer,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                const SizedBox(width: AppPadding.padding16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleMedium,
                                      ),
                                      const SizedBox(
                                        height: AppPadding.padding5,
                                      ),
                                      Text(
                                        email,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              color:
                                                  colorScheme.onSurfaceVariant,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: AppPadding.padding8),
                                Icon(
                                  Icons.chevron_right,
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _ContactsNavigationBar(),
      ),
    );
  }

  String _initials(String name) {
    final parts = name
        .trim()
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty);
    if (parts.isEmpty) return '?';
    return parts.take(2).map((part) => part[0].toUpperCase()).join();
  }
}

class _ContactsNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return NavigationBar(
      selectedIndex: 0,
      destinations: [
        const NavigationDestination(
          icon: Icon(Icons.chat_bubble_outline),
          selectedIcon: Icon(Icons.chat_bubble_outline),
          label: 'Chats',
        ),
        NavigationDestination(
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.pushNamed(context, RoutesManager.settingScreen);
        }
      },
      backgroundColor: colors.surface,
      indicatorColor: colors.primaryContainer,
    );
  }
}

class ChatScreenArg {
  final String recipiantName;
  final String recipiantID;

  ChatScreenArg({required this.recipiantName, required this.recipiantID});
}
