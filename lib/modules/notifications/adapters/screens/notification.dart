//import 'package:examen/kernel/theme/colors_app.dart';
import 'package:examen/modules/notifications/adapters/screens/info.dart';
import 'package:flutter/material.dart';


// class Notification {
//  final String title;
//  final String description;
//  final IconData icon;

//  Notification({required this.title, required this.description, required this.icon});
// }



// class Notifications extends StatelessWidget {
//   const Notifications({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<Notification> notifications = [
//       Notification(title: 'Llega hoy', description: 'Blusa color blanco con negro', icon: Icons.notifications_active),
//       Notification(title: 'Acompaña tu producto', description: 'Compra este nuevo suéter para acompañar con tu blusa', icon: Icons.notifications_active),
//       Notification(title: 'Te respondieron', description: 'El producto está en camino', icon: Icons.notifications_active),
//       // Agrega más notificaciones aquí si lo deseas
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notificaciones'),
//         backgroundColor: ColorsApp.primaryColor,
//       ),
//       body: ListView.builder(
//         itemCount: notifications.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: const EdgeInsets.all(8.0),
//             child: ListTile(
//               leading: Icon(notifications[index].icon),
//               title: Text(notifications[index].title),
//               subtitle: Text(notifications[index].description),
//               trailing: ElevatedButton(
//                   onPressed: () {
//                   Navigator.of(context).pushNamed('/notification/info');
//                 },
//                 child: const Text('Ver más'),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Acciones al presionar el ícono de configuración
              print('Configuración');
            },
          ),
        ],
      ),
      body: NotificationList(),
    );
  }
}

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Número de notificaciones simuladas
      itemBuilder: (context, index) {
        return NotificationCard();
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationDetailScreen (
              title: 'Notificación de ejemplo',
              description: 'Descripción de la notificación',
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.blue,
            child: Icon(Icons.notifications, size: 24, color: Colors.white),
          ),
          title: Text('Notificación de ejemplo'),
          subtitle: Text('Descripción de la notificación'),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Acciones al presionar el ícono de opciones
              print('Más opciones');
            },
          ),
        ),
      ),
    );
  }
}
