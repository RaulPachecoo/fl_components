import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {


   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>(); 

    final Map<String, String> formValues = {
      'nombre' : 'Anselmo',
      'apellidos': 'Godofredo Orador',
      'email': 'Anselmo123@gmail.com',
      'password': '123456',
      'rol': 'usuario'

    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios: Inputs'),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(hintText: 'Nombre', labelText: 'Nombre', helperText: 'Introduce solo texto', icon: Icons.assignment_ind_outlined, suffixIcon: Icons.group_outlined, formProperty: 'nombre', formValues: formValues,),
              const SizedBox(height: 30,),
              CustomTextFormField(hintText: 'Apellidos', labelText: 'Apellidos', helperText: 'Introduce solo texto', icon: Icons.supervised_user_circle_outlined, formProperty: 'apellidos', formValues: formValues,),
              const SizedBox(height: 30,),
              CustomTextFormField(hintText: 'E-mail', labelText: 'ejemplo@gmail.com', icon: Icons.email_outlined, keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
              const SizedBox(height: 30,),
              CustomTextFormField(hintText: 'Contraseña', labelText: 'Contraseña del usuario',helperText: 'Minimo 8 caracteres con una mayuscula', icon: Icons.password_outlined, obscureText: true, formProperty: 'contraseña', formValues: formValues,),
              const SizedBox(height: 30,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'usuario',child: Text('Usuario'),),
                  DropdownMenuItem(value: 'editor',child: Text('Editor'),),
                  DropdownMenuItem(value: 'administrador',child: Text('Administrador'),)
                ], 
                onChanged: (value){
                  formValues['rol'] = value ?? 'usuario';
                }              
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar')),
                  
                ),
                onPressed: () {
                  if(!myFormKey.currentState!.validate()){
                    FocusScope.of(context).requestFocus(FocusNode());
                    print('El formulario contiene errores');
                    return;
                  }
                  print(formValues); 
                },
              )
            ],
          ),
        )
      ),
    );
  }
}

