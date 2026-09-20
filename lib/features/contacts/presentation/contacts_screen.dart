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
              return ListView.builder(
                itemCount: state.contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.chatScreen);
                    },
                    child: ListTile(title: Text(state.contacts[index]["name"])),
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
