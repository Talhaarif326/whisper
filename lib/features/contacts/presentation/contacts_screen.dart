import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whisper/core/widgets/app_screen_content.dart';
import 'package:whisper/core/app_colors/app_theme.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/features/contacts/data/remote_data_source/contact_remote_data_source.dart';
import 'package:whisper/features/contacts/data/repository/contact_repository_imp.dart';
import 'package:whisper/features/contacts/presentation/bloc/contact_bloc.dart';

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
          ContactBloc(ContactRepositoryImp(ContactRemoteDataSource()))
            ..add(ContactEvent.onFetchedContacts()),
      child: BlocListener<ContactBloc, ContactState>(
        listener: (context, state) {
          if (state.contacts.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Contacts fetched successfully!')),
            );
          }
          if (state.contacts.isEmpty) {
            Navigator.pushReplacementNamed(context, RoutesManager.loginScreen);
          }
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Contacts')),
          body: AppScreenContent(
            child: BlocBuilder<ContactBloc, ContactState>(
              builder: (context, state) {
                final colorScheme = Theme.of(context).colorScheme;

                return ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppTheme.screenInset,
                    vertical: AppTheme.screenInset,
                  ),
                  itemCount: state.contacts.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (state.contacts[index]["uid"] ==
                        FirebaseAuth.instance.currentUser!.uid) {
                      return SizedBox.shrink();
                    }
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RoutesManager.chatScreen,
                          arguments: ChatScreenArg(
                            recipiantName: state.contacts[index]["name"],
                            recipiantID: state.contacts[index]["uid"],
                          ),
                        );
                      },
                      child: Card(
                        color: colorScheme.primaryContainer,
                        surfaceTintColor: colorScheme.primaryContainer,
                        margin: EdgeInsets.only(bottom: AppPadding.padding12),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: AppPadding.padding16,
                            vertical: AppPadding.padding8,
                          ),
                          leading: CircleAvatar(
                            backgroundColor: colorScheme.primary,
                            foregroundColor: colorScheme.onPrimary,
                            child: const Icon(Icons.person_outline),
                          ),
                          title: Text(
                            state.contacts[index]["name"],
                            style: TextStyle(
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          subtitle: Text(
                            state.contacts[index]["email"],
                            style: TextStyle(
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ChatScreenArg {
  final String recipiantName;
  final String recipiantID;

  ChatScreenArg({required this.recipiantName, required this.recipiantID});
}
