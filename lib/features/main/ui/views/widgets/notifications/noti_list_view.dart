import 'package:flutter/material.dart';
import 'package:fruits_hub/features/main/ui/views/widgets/notifications/noti_item.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const NotificationItem(),
    );
  }
}
