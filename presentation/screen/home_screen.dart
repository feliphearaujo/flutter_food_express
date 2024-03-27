import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  // Define o item selecionado no menu drawer
  int _selectedIndex = 0;

  HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(

// Titulo
        appBar: AppBar(
          title: const Text('FoodExpress'),
        ),
        
        drawer: Drawer(child: _drawer(context)),
        

// Corpo
        body: Container(),

      ),
    );

  }
  
///Método responsável para criar o menu
///drawer da aplicação
  Widget _drawer(BuildContext context) {
    return ListView(
    children: [
      // cabeçalho
      const DrawerHeader(child: Text("Home")),

      // componente usuário
      ListTile(
        title: const Text('Usuário'),
        selected: _selectedIndex == 0,
        leading: const Icon(Icons.people),
        onTap: () {
          // Fecha o menu ao clicar
          Navigator.pop(context);
        },
      )
    ],

  );
  }
  
}