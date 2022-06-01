import 'package:flutter/material.dart';
import 'package:flutter_application_/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 100.0,
              height: 200.0,
              child: Image(
                image: AssetImage('assets/images/1.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              LocaleKeys.hello.tr(),
              style: const TextStyle(fontSize: 40.0),
            ),
            const SizedBox(height: 30.0),
            Text(
              LocaleKeys.RBCs.tr(),
              style: const TextStyle(fontSize: 40.0),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(const Locale('en'));
                  },
                  child: const Text('English'),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(const Locale('ar'));
                  },
                  child: const Text('العربية'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
