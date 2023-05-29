import "dart:io";

import 'package:mysql1/mysql1.dart'; 

class bddaccess {

bddaccess();



  Future < List <dynamic> > getData() async {
    final connexion = await MySqlConnection.connect(ConnectionSettings(
      
      
      host : '',
      port: ,
      user: '',
      password: '',
      db: '',
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