import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/space.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/most_selling/app_bar_with_notification.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/notifications/noti_count_row.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/notifications/noti_list_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        AppBarWithNotification(
          title: S.of(context).mostPop,
        ),
        const SliverToBoxAdapter(child: SpaceV(16)),
        const NotificationCountRow(),
        const NotificationListView(),
      ],
    );
  }
}

