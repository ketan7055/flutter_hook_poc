import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_poc/gallery_items.dart';
import 'package:flutter_hooks_poc/hooks/use_momoized.dart';
import 'package:flutter_hooks_poc/hooks/use_state_hook.dart';

class HooksGalleryApp extends HookWidget {
  const HooksGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    useAnimationController(duration: const Duration(seconds: 2));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Hooks Gallery'),
        ),
        body: ListView(children: [
          GalleryItem(
            title: 'useState',
            builder: (context) => const UseStateHook(),
          ),
          GalleryItem(
            title: 'useMemoize + useStream',
            builder: (context) => const UseMemoization(),
          ),

        ]),
      );
  }
}