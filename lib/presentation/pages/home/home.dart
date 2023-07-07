import 'package:dictionary/core/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.book_outlined,
          size: 32,
          color: AppTheme.appBarIconColor,
        ),
        actions: [
          CupertinoSwitch(
              value: light,
              onChanged: ((value) {
                setState(() {
                  light = value;
                });
              })),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode_outlined,
              size: 32,
              color: AppTheme.appBarIconColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                cursorColor: AppTheme.boldTextColor,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppTheme.boldTextColor),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: AppTheme.textBackgroundColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide.none),
                  suffixIcon: Icon(
                    Icons.search_sharp,
                    color: AppTheme.secondaryTextColor,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "keyboard",
                        style: TextStyle(
                            color: AppTheme.boldTextColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "/ˈkiːbɔːd/",
                        style: TextStyle(
                            color: AppTheme.secondaryTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: AppTheme.iconBackgroundColor,
                      foregroundColor: Colors.white,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: AppTheme.iconColor,
                      size: 32,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "noun",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    thickness: 0.5,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
