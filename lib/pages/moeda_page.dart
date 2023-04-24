// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../repositories/moeda_repository.dart';

class MoedasDigitais extends StatefulWidget {
  const MoedasDigitais({Key? key}) : super(key: key);

  @override
  State<MoedasDigitais> createState() => _MyMoedasDigitais();
}

class _MyMoedasDigitais extends State<MoedasDigitais> {
  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Moedas Digitais')),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text(tabela[moeda].sigla)),
              title: Text(tabela[moeda].nome),
              trailing: Text(tabela[moeda].preco.toString()),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (BuildContext buildContext, int int) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
