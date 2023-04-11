import 'package:chatgpt_client/api/chat_api.dart';
import 'package:chatgpt_client/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/uniao.png',
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffAFCB08)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChatPage(
                          chatApi: ChatApi(),
                        ),
                      ));
                    },
                    child: Text(
                      'go_to_chat'.i18n(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 90,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                      bottom: 75,
                      child: Text(
                        'Powered by',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Image.asset(
                    'assets/pdm_logo.png',
                    width: 250,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
