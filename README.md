 # Actividad 1 del Curso de Flutter - Dojo Full Stack

---

## Descripción de la Actividad

En esta actividad, desarrollamos una aplicación sencilla en Flutter que presenta un formulario al usuario. El formulario contiene campos para introducir información personal, incluyendo "Nombre y apellido", "Edad", "Hobbies", "Ciudad" y "Comida favorita". Una vez que el usuario rellena toda la información y pulsa el botón "Ver Mensaje", se muestra una alerta con toda la información concatenada.

---

## Explicación del Código

### 1. Importaciones necesarias

Iniciamos importando los paquetes necesarios de Flutter.

```dart
import 'package:flutter/material.dart';
```

### 2. Función principal y Clase MyApp

La función main es el punto de entrada de nuestra aplicación. Aquí, estamos ejecutando la aplicación y definiendo MyApp como el widget raíz.

```dart
void main() => runApp(MyApp());
```

### 3. Clase FormularioPage

Esta es la pantalla principal de nuestra aplicación. Se ha utilizado un StatefulWidget ya que queremos manejar el estado de los campos del formulario y actualizar la UI en consecuencia.



### 4. Función del Botón y Mostrar Datos Concatenados

El botón "Ver Mensaje" es una parte esencial de esta actividad. Cuando el usuario completa todos los campos del formulario y presiona este botón, se realiza la concatenación de todos los datos ingresados y se muestran en una ventana de alerta. A continuación, se explica en detalle cómo se logra esto:

#### _Función _mostrarMensaje_

Dentro de nuestra clase `_FormularioPageState`, tenemos una función llamada `_mostrarMensaje`. Esta función tiene dos responsabilidades principales:

1. **Validar el Formulario**:
   Antes de procesar los datos, se verifica que todos los campos hayan sido completados correctamente.

```dart
   if (_formKey.currentState!.validate()) {}
```

2. **Mostrar Datos Concatenados:**:
  Una vez que el formulario es validado, se recopilan todos los datos y se concatenan en un mensaje. Luego, 
  este mensaje se muestra al usuario a través de un AlertDialog.

```dart

   _formKey.currentState!.save();
showDialog(
  context: context,
  builder: (ctx) => AlertDialog(
    content: Text(
      'Tu nombre es $nombreYApellido, tienes $edad años, tus hobbies son $hobbies, vives en $ciudad y tu comida favorita es $comidaFavorita.',
    ),
  ),
);
```