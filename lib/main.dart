import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AppInjoy(),
      },
    );
  }
}

class AppInjoy extends StatefulWidget {
  const AppInjoy({super.key});

  @override
  State<AppInjoy> createState() => _AppInjoyState();
}

class _AppInjoyState extends State<AppInjoy> {
  ValueNotifier<int> kq = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Injoy'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () => kq.value++, icon: const Icon(Icons.add)),
            ValueListenableBuilder(
              valueListenable: kq,
              builder: (context, value, child) => Text(value.toString()),
            ),
            IconButton(
                onPressed: () => kq.value--, icon: const Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
