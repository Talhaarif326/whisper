import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
        listenWhen: (previous, current) => current.contacts.isNotEmpty,
        listener: (context, state) {
          if (state.contacts.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Contacts fetched successfully!')),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Contacts')),
          body: BlocBuilder<ContactBloc, ContactState>(
            builder: (context, state) {
              final colorScheme = Theme.of(context).colorScheme;

              return ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.padding16,
                  vertical: AppPadding.padding12,
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
                      margin: EdgeInsets.only(bottom: AppPadding.padding12),
                      elevation: AppSize.sizeDouble5,
                      color: colorScheme.primaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSize.sizeDouble16,
                        ),
                      ),
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          state.contacts[index]["email"],
                          style: TextStyle(
                            color: colorScheme.onPrimaryContainer.withValues(
                              alpha: 0.8,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: colorScheme.onPrimaryContainer,
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
    );
  }
}

class ChatScreenArg {
  final String recipiantName;
  final String recipiantID;

  ChatScreenArg({required this.recipiantName, required this.recipiantID});
}
