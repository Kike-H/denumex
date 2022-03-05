// ignore: file_names
import 'package:denumex/screens/Singup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:denumex/components/Input.dart';
import 'package:denumex/components/Button.dart';

class SingUp extends StatelessWidget {
  final inputName = Input(label: "Nombre(s)");
  final inputLastName = Input(label: "Apellido");
  final inputEmail = Input(label: "Email");
  final inputPassword = Input(label: "Contraseña", obscureText: true);
  final inputPasswordConfirm =
      Input(label: "Confirma tu contraseña", obscureText: true);

  SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account, It's free ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputName,
                  inputEmail,
                  inputPassword,
                  inputPasswordConfirm,
                  GestureDetector(
                      onTap: () {
                        showLegal(context);
                      },
                      child: Text("Terminos y condiciones"))
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: const Button(
                  label: 'Sing up',
                  colorBackground: 0xFF0095FF,
                  colorFont: Colors.white,
                  callback: action,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("Already have an account?"),
                  Text(
                    " Login",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void action() {}

void showLegal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    builder: (context) => buildSheet(),
  );
}

Widget buildSheet() => DraggableScrollableSheet(
    initialChildSize: 0.7,
    minChildSize: 0.5,
    maxChildSize: 1,
    builder: (_, controller) => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        padding: const EdgeInsets.all(16),
        child: ListView(
          padding: const EdgeInsets.all(20),
          controller: controller,
          children: const [
            Text(
              "Aviso de privacidad",
              style: TextStyle(fontSize: 44),
            ),
            Text(
                "De acuerdo a lo Previsto en la “Ley Federal de Protección de Datos Personales”, declara Fervel Asesoría Integral S.C.,ser una empresa legalmente constituida de conformidad con las leyes mexicanas, con domicilio en Avenida Fuente de Trevi Número 28, Colonia Lomas de Tecamachalco, C.P. 53950, Naucalpan de Juárez en México, Estado de México.; y como responsable del tratamiento de sus datos personales, hace de su conocimiento que la información de nuestros clientes es tratada de forma estrictamente confidencial por lo que al proporcionar sus datos personales, tales como:"),
            Button(
                label: "Aceptar",
                colorBackground: 0xFF0095FF,
                colorFont: Colors.white,
                callback: action)
          ],
        )));
