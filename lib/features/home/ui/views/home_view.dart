import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              SupabaseClient supabase = Supabase.instance.client;

              supabase.auth.signOut();
            },
            icon: const Icon(Icons.logout)),
      ),
    );
  }
}
