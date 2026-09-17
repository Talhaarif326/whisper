// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/features/chat/data/remote_data_source/remote_data_source.dart';
import 'package:whisper/features/chat/data/repository/chat_repository_impl.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';
import 'package:whisper/features/chat/presentation/bloc/chat_bloc_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => ChatBlocBloc(
        chatRepositoryImpl: ChatRepositoryImpl(RemoteDataSource()),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Chat'), centerTitle: true),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<ChatBlocBloc, ChatBlocState>(
                  builder: (context, state) {
                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) {
                        return _ChatBubble(message: state.messages[index]);
                      },
                    );
                  },
                ),
              ),
              Material(
                elevation: 4,
                color: theme.colorScheme.surface,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: BlocBuilder<ChatBlocBloc, ChatBlocState>(
                          buildWhen: (previous, current) =>
                              current.messageChanged != previous.messageChanged,
                          builder: (context, state) {
                            return TextField(
                              minLines: 1,
                              maxLines: 4,
                              textInputAction: TextInputAction.send,
                              decoration: InputDecoration(
                                hintText: 'Write a message...',
                                filled: true,
                                fillColor:
                                    theme.colorScheme.surfaceContainerHighest,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 12,
                                ),
                              ),
                              onChanged: (value) {
                                context.read<ChatBlocBloc>().add(
                                  ChatBlocEvent.onMessageChanged(value),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      BlocBuilder<ChatBlocBloc, ChatBlocState>(
                        buildWhen: (previous, current) =>
                            current.messageChanged != previous.messageChanged,
                        builder: (context, state) {
                          return IconButton.filled(
                            onPressed: () {
                              print("button pressed");

                              context.read<ChatBlocBloc>().add(
                                ChatBlocEvent.sendMessage(
                                  MessageSendingModel(
                                    message: state.messageChanged,
                                  ),
                                ),
                              );
                            },
                            tooltip: 'Send message',
                            icon: const Icon(Icons.send_rounded),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});

  final MessageResponseModel message;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bubbleColor = message.isMine
        ? colorScheme.primary
        : colorScheme.surfaceContainerHighest;
    final textColor = message.isMine
        ? colorScheme.onPrimary
        : colorScheme.onSurface;

    return Align(
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.78,
        ),
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight: const Radius.circular(18),
            bottomLeft: Radius.circular(message.isMine ? 18 : 4),
            bottomRight: Radius.circular(message.isMine ? 4 : 18),
          ),
        ),
        child: Column(
          crossAxisAlignment: message.isMine
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              message.uid,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: textColor.withValues(alpha: 0.75),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              message.message,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
