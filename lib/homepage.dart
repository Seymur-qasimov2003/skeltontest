import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeltoneffect/skelton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  List<String> months = [];

  @override
  void initState() {
    ///2 saniye sonra çalışacak kodlar
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        months = [
          'Ocak',
          'Şubat',
          'Mart',
          'Nisan',
          'Mayıs',
          'Haziran',
          'Temmuz',
          'Ağustos',
          'Eylül',
          'Ekim',
          'Kasım',
          'Aralık',
        ];
        isLoading = true;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          isLoading
              ? Expanded(
                  child: ListView.builder(
                    itemCount: months.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(months[index]),
                        leading: const Icon(Icons.calendar_today),
                      );
                    },
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SkeltonComponent();
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 7,
                          ),
                      itemCount: 8)),
        ],
      ),
    );
  }
}
