import 'package:examen/kernel/theme/colors_app.dart';
import 'package:flutter/material.dart';

class BottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavigationTab({super.key, required this.selectedIndex, required this.onItemTapped});



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Inicio'),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'profile'),
      BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined), label: 'notificacion')
    ],
    currentIndex: selectedIndex, //contiene el indice en el cual se tiene en la lista
    selectedItemColor: ColorsApp.successColor, 
    unselectedItemColor: ColorsApp.primaryColor, //pone color a los iconos que no estan seleccionando
    onTap: onItemTapped, //se ejecuta cada que el usuario da clic 
    );
  }

}