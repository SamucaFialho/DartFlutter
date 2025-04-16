import 'package:flutter/material.dart';
import 'package:menu_item/menu_item.dart';
import 'package:menu_item/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Menu"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(),
              ),
            ),
          ),
          if (isOpen())
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  // Ação do pedido aqui
                },
                child: Text("Order now!"),
              ),
            ),
        ],
      ),
    );
  }

  // Verifica se a pizzaria está aberta
  bool isOpen() {
    const horaInicial = 10;
    const horaFinal = 23;
    final horaAtual = DateTime.now().hour;

    return horaAtual >= horaInicial && horaAtual < horaFinal;
  }

  // Método alternativo para criar os itens, mas opcional se você já usa map direto
  List<MenuItem> _buildItems() {
    return pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList();
  }
}
