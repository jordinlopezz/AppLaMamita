import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double drawerWidth =
        MediaQuery.of(context).size.width * 0.75; // Ajusta el ancho del Drawer

    return DefaultTabController(
      length: 3, // Número total de tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('La Mamita'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Comidas'),
              Tab(text: 'Bebidas'),
              Tab(text: 'Postres'),
            ],
          ),
        ),
        drawer: Drawer(
          elevation: 0, // Elimina la sombra del Drawer
          child: SafeArea(
            child: Container(
              width: drawerWidth,
              color: Colors.white, // Color de fondo del Drawer
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: 70, // Ajusta de la altura del encabezado
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(163, 145, 147, 5),
                      image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'La Mamita',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const UserAccountsDrawerHeader(
                    accountName: Text('Jordin Lopez'),
                    accountEmail: Text('jordinalexanderlopezperez@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/profile_image.png'),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(163, 145, 147, 5),
                    ),
                    margin: EdgeInsets
                        .zero, // Eliminar espacio entre el encabezado y el perfil del usuario
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Inicio'),
                    onTap: () {
                      // Manejar la selección de la opción "Inicio"
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.restaurant_menu),
                    title: const Text('Menú'),
                    onTap: () {
                      // Manejar la selección de la opción "Menú"
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text('Carrito'),
                    onTap: () {
                      // Manejar la selección de la opción "Carrito"
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('Nosotros'),
                    onTap: () {
                      // Manejar la selección de la opción "Nosotros"
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Contenido de Comidas aquí')),
            Center(child: Text('Contenido de Bebidas aquí')),
            Center(child: Text('Contenido de Postres aquí')),
          ],
        ),
      ),
    );
  }
}
