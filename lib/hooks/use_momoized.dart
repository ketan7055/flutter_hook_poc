import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseMemoization extends HookWidget {
  const UseMemoization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    count.value++;
    Future<String> fetchData() async{
      await Future.delayed( const Duration(seconds:  1));
      return 'Hello World ${count.value}';
    }

    final future = useMemoized(fetchData, [count.value]);
    final snapShot = useFuture(future);
    return Scaffold(
      appBar: AppBar(
        title: const Text('use Memoization'),
      ),
      body: Center(
        child: snapShot.hasData ? Text('${snapShot.data}') : const CircularProgressIndicator(),
      ),
    );
  }
}
