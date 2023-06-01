import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final opciones = [
    ListTile(
      leading: Icon(Icons.home),
      title: Text('Inicio'),
      onTap: () {
        // Lógica para navegar a la página de inicio
      },
    ),
    ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text('Tienda'),
      onTap: () {
        // Lógica para navegar a la página de la tienda
      },
    ),
    ExpansionTile(
      leading: Icon(Icons.shopping_bag),
      title: Text('Productos'),
      children: <Widget>[
        ListTile(
          title: Text('Joyería'),
          onTap: () {
            // Lógica para navegar a la página de joyería
          },
        ),
        ListTile(
          title: Text('Perfumes'),
          onTap: () {
            // Lógica para navegar a la página de perfumes
          },
        ),
        ListTile(
          title: Text('Productos de belleza'),
          onTap: () {
            // Lógica para navegar a la página de productos de belleza
          },
        ),
        ListTile(
          title: Text('Maquillajes'),
          onTap: () {
            // Lógica para navegar a la página de maquillajes
          },
        ),
      ],
    ),
    ListTile(
      leading: Icon(Icons.local_shipping),
      title: Text('Proveedores'),
      onTap: () {
        // Lógica para navegar a la página de proveedores
      },
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('Configuración'),
      onTap: () {
        // Lógica para navegar a la página de configuración
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YANBAL',
      theme: ThemeData(
      primarySwatch: Colors.orange, // Color principal de la aplicación
      accentColor: Colors.orangeAccent, // Color de algunos elementos
      canvasColor: Colors.orangeAccent, // Color del fondo del drawer
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,// Color de la barra de navegación
          centerTitle: true,
          title: Image.asset(
            'assets/Yanbal_logo.jpg',
            fit: BoxFit.fitWidth,
            height: kToolbarHeight,
          ),
        ),
        body: Center(
          child: Text('Mi tienda'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 190.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/yanbal_logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: UserAccountsDrawerHeader(
                      accountName: Text('Rosa A. Mitma'),
                      accountEmail: Text('mitmarosa@yanbal.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200',
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: opciones,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
