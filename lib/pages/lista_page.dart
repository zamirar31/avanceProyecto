import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/home_page.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<Lista>{
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                // Aquí puedes agregar la lógica que desees al hacer clic en el botón "+"
                print('Botón + presionado');
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SearchBar(), // Agregamos la barra de búsqueda
                SizedBox(width: 16.0),
                StateDropdown(), // Agregamos la caja de selección "Estado"
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  NoticiaCard(
                    titulo: 'FNC_Desktop01',
                    contenido: '0001',
                    imagenUrl:
                        'https://conceptodefinicion.de/wp-content/uploads/2011/09/cpu.png',
                  ),
                  NoticiaCard(
                    titulo: 'Canon Printer',
                    contenido: 'SKU421',
                    imagenUrl:
                        'https://i.ebayimg.com/images/g/CSkAAOSwRMhjLJIq/s-l300.png',
                  ),
                  NoticiaCard(
                    titulo: '0153FNC-LAPTOP_0153',
                    contenido: '0153',
                    imagenUrl:
                        'https://i.ebayimg.com/images/g/LwAAAOSw3-ZkL0ye/s-l500.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar equipo...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class StateDropdown extends StatefulWidget {
  @override
  _StateDropdownState createState() => _StateDropdownState();
}

class _StateDropdownState extends State<StateDropdown> {
  String? _selectedState;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedState,
      onChanged: (String? newValue) {
        setState(() {
          _selectedState = newValue;
        });
      },
      items: <String>['Estado 1', 'Estado 2', 'Estado 3', 'Estado 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text('Estado'),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String contenido;
  final String? imagenUrl;

  const NoticiaCard({
    required this.titulo,
    required this.contenido,
    this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imagenUrl != null)
              Expanded(
                flex: 2,
                child: Image.network(
                  imagenUrl!,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Divider(color: Colors.grey),
                  SizedBox(height: 8.0),
                  Text(
                    contenido,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
