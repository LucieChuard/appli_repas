import "dart:io";

import 'package:mysql1/mysql1.dart'; 

class bddaccess {

      String hostutilisateur = '109.234.164.253';
      int portutilisateur= 3306;
      String utilisateur= 'admin';
      String motdepasse= 'L&Smdpadmin';
      String bdd= 'ecaw6516_recette';

bddaccess();

  Future < List <dynamic> > getData() async {
    final connexion = await MySqlConnection.connect(ConnectionSettings(
      
      
      host : hostutilisateur,
      port: portutilisateur,
      user: utilisateur,
      password: motdepasse,
      db: bdd,
    ));
    
    var results = await connexion.query (
      'SHOW TABLES FROM db;'
    );
    print (results.toList());
    return results.toList();

    }

}


void main(List<String> args) {
  bddaccess test = bddaccess();
  test.getData();
}