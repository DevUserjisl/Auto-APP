#language: es


Característica: Como usuario de la aplicacion quiero loguearme correctamente a la app

  Antecedentes: Ingresar a la aplicacion
  @LoginAppIOS
  Escenario: [TEST-002] - Validar el incio de sesión exitoso IOS
    Dado que abro la app
    Cuando digito mi usuario y contraseña
    Entonces me logueo correctamente