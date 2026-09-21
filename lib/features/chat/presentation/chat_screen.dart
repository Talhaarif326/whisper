// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/features/chat/data/remote_data_source/remote_data_source.dart';
import 'package:whisper/features/chat/data/repository/chat_repository_impl.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';
import 'package:whisper/features/chat/presentation/bloc/chat_bloc_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({required this.recipianID, required this.name, super.key});

  final String recipianID;
  final String name;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => ChatBlocBloc(
        chatRepositoryImpl: ChatRepositoryImpl(
          RemoteDataSource(recipiant: widget.recipianID),
        ),
      )..add(const ChatBlocEvent.getMessages()),
      child: BlocListener<ChatBlocBloc, ChatBlocState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
          if (!state.isLoading &&
              state.errorMessage.isEmpty &&
              state.messages.isNotEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.name),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, RoutesManager.settingScreen);
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<ChatBlocBloc, ChatBlocState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return ListView.builder(
                        reverse: true,
                        padding: EdgeInsets.fromLTRB(
                          AppPadding.padding16,
                          AppPadding.padding20,
                          AppPadding.padding16,
                          AppPadding.padding12,
                        ),
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
                    padding: EdgeInsets.fromLTRB(
                      AppPadding.padding16,
                      AppPadding.padding10,
                      AppPadding.padding16,
                      AppPadding.padding12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: BlocBuilder<ChatBlocBloc, ChatBlocState>(
                            buildWhen: (previous, current) =>
                                current.messageChanged !=
                                previous.messageChanged,
                            builder: (context, state) {
                              return TextField(
                                minLines: 1,
                                maxLines: 4,
                                textInputAction: TextInputAction.send,
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                  hintText: 'Write a message...',
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.surfaceContainerHighest,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.sizeDouble24,
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: AppPadding.padding18,
                                    vertical: AppPadding.padding12,
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
                        SizedBox(width: AppSize.sizeDouble8),
                        BlocBuilder<ChatBlocBloc, ChatBlocState>(
                          buildWhen: (previous, current) =>
                              current.messageChanged != previous.messageChanged,
                          builder: (context, state) {
                            return IconButton.filled(
                              onPressed: () {
                                final message = state.messageChanged.trim();
                                if (message.isEmpty) {
                                  return;
                                }
                                context.read<ChatBlocBloc>().add(
                                  ChatBlocEvent.sendMessage(
                                    MessageSendingModel(
                                      // isMine: true,
                                      message: message,
                                      recipiantId: widget.recipianID,
                                    ),
                                  ),
                                );
                                _textEditingController.clear();
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
        margin: EdgeInsets.only(bottom: AppPadding.padding14),
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.padding16,
          vertical: AppPadding.padding11,
        ),
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
            // Text(
            //   message.uid,
            //   style: Theme.of(context).textTheme.labelSmall?.copyWith(
            //     color: textColor.withValues(alpha: 0.75),
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            SizedBox(height: AppSize.sizeDouble3),
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
