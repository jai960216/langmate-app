import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lang_mate/ui/pages/home/tabs/chat/widgets/chat_tab_list_view.dart';

import '../../../../../app/app_providers.dart';
import '../../../../../core/utils/ui_util.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            AppBar(
              title: Text('채팅'),
              actions: [
                UIUtil.buildLogOutIconButton(
                  context,
                  ref.read(authServiceProvider),
                ),
              ],
            ),
            ChatTabListView(),
          ],
        );
      },
    );
  }
}
