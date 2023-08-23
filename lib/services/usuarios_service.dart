import 'package:http/http.dart' as http;

import 'package:chat/models/usuario.dart';
import 'package:chat/models/usuarios_response.dart';
import 'package:chat/services/auth_service.dart';

import '../global/environment.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final uri = Uri.parse('${Environment.apiUrl}/usuarios');
      final token = await AuthService.getToken();
      final resp = await http.get(uri,
          headers: {'Content-Typ': 'application/json', 'x-token': token!});

      final usuariosResponse = usuariosResponseFromJson(resp.body);
      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
