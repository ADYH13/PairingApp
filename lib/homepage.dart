/*
 *  Copyright 2020 chaobinwu89@gmail.com
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pairingapp/setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 3,
          leading: Center(),
          centerTitle: true,
          title: Text("PairingApp",
              style: TextStyle(color: Colors.white, fontFamily: 'Roboto')),
          backgroundColor: Color.fromARGB(255, 148, 3, 173)),
      body: IndexedStack(
        index: currentindex,
        children: [
          Container(
            child: Text('page 1'),
          ),
          Container(
            child: Text('page 2'),
          ),
          Setting()
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        
        style: TabStyle.react,
        backgroundColor: Color.fromARGB(255, 148, 3, 173),
        items: [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.settings),
        ],
        //initialActiveIndex: 1,
        onTap: (int i) => setState(() {
          currentindex = i;
        }),
      ),
    );
  }
}
