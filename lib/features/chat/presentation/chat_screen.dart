// ignore_for_file: file_names

import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/chat/chat_barrel.dart';

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
        repository: ChatRepositoryImpl(
          FirebaseChatRemoteDataSource(
            recipientId: widget.recipianID,
            notificationDataSource: FirebaseChatNotificationDataSource(),
          ),
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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Back',
              onPressed: () => Navigator.maybePop(context),
            ),
            title: Row(
              children: [
                CircleAvatar(
                  radius: AppTheme.contactAvatarRadius,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  foregroundColor: theme.colorScheme.onPrimaryContainer,
                  child: Text(
                    _initials(widget.name),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: AppPadding.padding10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        'In your contacts',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                tooltip: 'Settings',
                onPressed: () {
                  Navigator.pushNamed(context, RoutesManager.settingScreen);
                },
              ),
            ],
          ),
          body: AppScreenContent(
            child: Container(
              color: theme.colorScheme.surfaceContainerLow,
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<ChatBlocBloc, ChatBlocState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state.messages.isEmpty) {
                          return Center(
                            child: Text(
                              'Start a conversation',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          );
                        }
                        return ListView.builder(
                          reverse: true,
                          padding: const EdgeInsets.fromLTRB(
                            AppTheme.screenInset,
                            AppTheme.screenInset,
                            AppTheme.screenInset,
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
                  Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      border: Border(
                        top: BorderSide(
                          color: theme.colorScheme.outlineVariant,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        AppTheme.screenInset,
                        AppPadding.padding12,
                        AppTheme.screenInset,
                        AppPadding.padding20,
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
                                        theme.colorScheme.surfaceContainerLow,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        AppTheme.cornerRadius,
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        AppTheme.cornerRadius,
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        AppTheme.cornerRadius,
                                      ),
                                      borderSide: BorderSide(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    context.read<ChatBlocBloc>().add(
                                      ChatBlocEvent.onMessageChanged(value),
                                    );
                                  },
                                  onSubmitted: (_) => _sendMessage(context),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: AppSize.sizeDouble8),
                          BlocBuilder<ChatBlocBloc, ChatBlocState>(
                            buildWhen: (previous, current) =>
                                current.messageChanged !=
                                previous.messageChanged,
                            builder: (context, state) {
                              return SizedBox(
                                width: AppTheme.buttonHeight,
                                height: AppTheme.buttonHeight,
                                child: IconButton.filled(
                                  onPressed: () => _sendMessage(context),
                                  tooltip: 'Send message',
                                  style: IconButton.styleFrom(
                                    foregroundColor:
                                        theme.colorScheme.onPrimary,
                                  ),
                                  icon: const Icon(Icons.send_rounded),
                                ),
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
      ),
    );
  }

  void _sendMessage(BuildContext context) {
    final message = _textEditingController.text.trim();
    if (message.isEmpty) return;

    context.read<ChatBlocBloc>().add(
      ChatBlocEvent.sendMessage(
        MessageSendingModel(message: message, recipiantId: widget.recipianID),
      ),
    );
    _textEditingController.clear();
    context.read<ChatBlocBloc>().add(const ChatBlocEvent.onMessageChanged(''));
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

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});

  final MessageResponseModel message;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bubbleColor = message.isMine
        ? colorScheme.primary
        : colorScheme.surfaceContainerLowest;
    final textColor = message.isMine
        ? colorScheme.onPrimary
        : colorScheme.onSurface;

    return Align(
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.sizeOf(context).width * AppTheme.messageWidthFactor,
        ),
        margin: EdgeInsets.only(bottom: AppPadding.padding14),
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.padding16,
          vertical: AppPadding.padding11,
        ),
        decoration: BoxDecoration(
          color: bubbleColor,
          border: message.isMine
              ? null
              : Border.all(color: colorScheme.outlineVariant),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(AppTheme.cornerRadius),
            topRight: const Radius.circular(AppTheme.cornerRadius),
            bottomLeft: Radius.circular(
              message.isMine
                  ? AppTheme.cornerRadius
                  : AppTheme.messageTailRadius,
            ),
            bottomRight: Radius.circular(
              message.isMine
                  ? AppTheme.messageTailRadius
                  : AppTheme.cornerRadius,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: message.isMine
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              message.message,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: textColor),
            ),
            const SizedBox(height: AppPadding.padding5),
            Text(
              _formatMessageTime(message.timestamp),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: textColor.withValues(alpha: AppTheme.subduedTextOpacity),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatMessageTime(DateTime timestamp) {
    final local = timestamp.toLocal();
    final hour = local.hour % 12 == 0 ? 12 : local.hour % 12;
    final minute = local.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
