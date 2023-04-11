import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class MessageComposer extends StatelessWidget {
  MessageComposer({
    required this.onSubmitted,
    required this.awaitingResponse,
    super.key,
  });

  final TextEditingController _messageController = TextEditingController();

  final void Function(String) onSubmitted;
  final bool awaitingResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.05),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: !awaitingResponse
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _messageController,
                        onSubmitted: onSubmitted,
                        decoration: InputDecoration(
                          hintText: 'write_message'.i18n(),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('response'.i18n()),
                        ),
                      ],
                    ),
            ),
            IconButton(
              onPressed: !awaitingResponse ? () => onSubmitted(_messageController.text) : null,
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}