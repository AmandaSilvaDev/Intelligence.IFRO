import 'package:flutter/material.dart';

import 'package:chamber_deputies/src/routes/router.dart';


class Home extends StatefulWidget {
  const Home({super.key}); // Construtor da classe Home, que é um StatefulWidget.

  @override
  State<Home> createState() => _HomeState(); // Cria o estado para o widget Home.
}

class _HomeState extends State<Home> {
  static const String titleAppBar = 'Início'; // Título fixo da AppBar.
  int _selectedIndex = 0; // Índice do item selecionado na BottomNavigationBar.

  // Função chamada quando um item da BottomNavigationBar é tocado.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice selecionado.

      // Navega para a rota correspondente ao índice selecionado.
      switch (index) {
        case 0:
          Navigator.pushNamed(context, routesMap['Home']!);
          break;
        case 1:
          Navigator.pushNamed(context, routesMap['deputados']!);
          break;
        case 2:
          Navigator.pushNamed(context, routesMap['comissoes']!);
          break;
        case 3:
          Navigator.pushNamed(context, routesMap['sobre']!);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Centraliza o título na AppBar.
        title: const Text(
          titleAppBar, // Exibe o título da AppBar.
          style: TextStyle(
            color: Colors.white, // Define a cor do texto como branco.
            fontSize: 20, // Define o tamanho da fonte.
            fontWeight: FontWeight.bold, // Define o peso da fonte como negrito.
          ),
        ),
      ),
      body: const HomeContent(), // Corpo da tela, exibindo o widget HomeContent.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Itens da BottomNavigationBar.
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ícone do item "Início".
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Ícone do item "Deputados".
            label: 'Deputados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_), // Ícone do item "Comissões".
            label: 'Comissões',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info), // Ícone do item "Sobre".
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex, // Índice do item atualmente selecionado.
        selectedItemColor: Colors.green, // Cor do item selecionado.
        unselectedItemColor: Colors.grey, // Cor dos itens não selecionados.
        backgroundColor: Colors.white, // Cor de fundo da BottomNavigationBar.
        onTap: _onItemTapped, // Função chamada ao tocar em um item.
      ),
    );
  }
}

// Widget para exibir o conteúdo da tela inicial.
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(254, 254, 254, 1), // Cor de fundo do Container.
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0), // Adiciona padding ao Container.
            child: Image.asset(
              'assets/images/logo_3.png', // Imagem exibida na tela inicial.
              height: 140, // Altura da imagem.
            ),
          ),
        ],
      ),
    );
  }
}