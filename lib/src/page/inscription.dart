import 'package:flutter/material.dart';

import 'general.dart';


class InscriptionView extends StatelessWidget {
  InscriptionView();

  static const routeName = '/inscription';

  @override 
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(context, GeneralView.routeName);
                },
                child: const Text("General"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 10, 83, 1))
                )
              ),
            
            const MonFormulaire(),

    
          ],
        ),
      ),
    );
}
}

class MonFormulaire extends StatefulWidget{
  const MonFormulaire({super.key});

  @override 
  FormulaireInscription createState(){
    return FormulaireInscription();
  }
}

class FormulaireInscription extends State<MonFormulaire>{

    final _formKey = GlobalKey<FormState>();

    String pseudo = "e";
    String adressemail = "e";
    String motdepasse = "e";
    String motdepasseverification = "e";
    bool _isobscure = true;

    @override
    Widget build(BuildContext context){
      return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Pseudo',
              ),
                validator: (value){
                pseudo = value.toString();
                if(value == null || value.isEmpty){
                  return 'Veuillez rentrer un Pseudo';
                }
                return null;
              },
            ),
            
            TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Adresse mail',
              ),
                validator: (value){
                adressemail = value.toString();
                if(value == null || value.isEmpty){
                  return 'Veuillez rentrer votre adresse mail';
                }
                return null;
              },
            ),

            TextFormField(
                obscureText:_isobscure,
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Mot de passe',
              ),
                validator: (value){
                motdepasse = value.toString();
                if(value == null || value.isEmpty){
                  return 'Veuillez rentrer le mot de passe';
                }
                return null;
              },
            ),
            
            TextFormField(
                obscureText:_isobscure,
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Confirmation mot de passe',
              ),
              validator: (value){
                motdepasseverification = value.toString();
                if(value == null || value.isEmpty){
                  return 'Veuillez rentrer la confirmation du mot de passe';
                }else if(motdepasse != motdepasseverification){
                  return 'les mots de passe ne correspondent pas';
                }
                return null;
              },
            ),
            Container(
              padding: EdgeInsets.only(left:10,top:40.0),
              child: ElevatedButton(
                onPressed: (){
                if (_formKey.currentState!.validate()){

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     content:Text(
                      ""+adressemail+" "+motdepasse+" "+motdepasseverification)));
                } 
              }
              , child: Text("Submit"),
              )
            ),
      ])
      );
}
}