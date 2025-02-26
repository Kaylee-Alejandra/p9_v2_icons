import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Iconos con Subtítulos'), // Título de la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto personalizado
              Text(
                "Kaylee Alejandra Luevano Molina - Mat: 22308051281248",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              SizedBox(height: 20), // Espacio entre el texto y los iconos
              // Primera fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                    icon: Icons.home,
                    subtitle: 'Inicio',
                    color: Colors.blue,
                  ),
                  IconWithSubtitle(
                    icon: Icons.favorite,
                    subtitle: 'Favoritos',
                    color: Colors.red,
                  ),
                  IconWithSubtitle(
                    icon: Icons.thumb_up,
                    subtitle: 'Like',
                    color: Colors.pink,
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                    icon: Icons.star,
                    subtitle: 'Destacados',
                    color: Colors.purple,
                  ),
                  IconWithSubtitle(
                    icon: Icons.settings,
                    subtitle: 'Ajustes',
                    color: Colors.grey,
                  ),
                  IconWithSubtitle(
                    icon: Icons.thumb_down,
                    subtitle: 'Dislike',
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color;

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50.0, color: color),
        SizedBox(height: 8), // Espacio entre el icono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
