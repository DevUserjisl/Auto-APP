#language: es


Característica: Como usuario de la aplicacion quiero loguearme correctamente a la app

  Antecedentes: Ingresar a la aplicacion
  @LoginApp
  Escenario: [TEST-001] - Validar el incio de sesión exitoso
    Dado que abro la app
    Cuando digito mi usuario y contraseña
    Entonces me logueo correctamente