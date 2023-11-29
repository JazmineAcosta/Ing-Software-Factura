<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Facturador Virtual</title>
  <meta content="" name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="librerias/assets/img/E-Billing.png" rel="icon" />
  <link href="librerias/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconexionect" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

  <!-- Vendor CSS Files -->
  <link href="librerias/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/quill/quill.snow.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/simple-datatables/style.css" rel="stylesheet" />

  <!-- Template Main CSS File -->
  <link href="librerias/assets/css/style.css" rel="stylesheet" />

  <!-- Asegúrate de tener jQuery incluido antes de este script -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

  <script>
    $(document).ready(function() {
      // Manejar el clic en el ícono del ojo para mostrar/ocultar la contraseña
      $("#basic").click(function() {
        var passwordInput = $("#password");
        var icon = $(this).find("i");

        if (passwordInput.attr("type") === "password") {
          passwordInput.attr("type", "text");
          icon.removeClass("bi-eye-slash").addClass("bi-eye");
        } else {
          passwordInput.attr("type", "password");
          icon.removeClass("bi-eye").addClass("bi-eye-slash");
        }
      });
    });
  </script>


</head>

<body class="bg-body-tertiary">
  <main>
    <div class="container">
      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="d-flex justify-content-center py-4">
                <a href="index.php" class="logo d-flex align-items-center w-auto">
                  <img src="librerias/assets/img/E-Billing.png" alt="" />
                  <span class="d-none d-lg-block">E-Billing</span>
                </a>
              </div>
              <!-- End Logo -->

              <div class="card mb-3">
                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">
                      Bienvenido
                    </h5>
                    <p class="text-center small">
                      Ingrese su Nombre de usuario y su contraseña
                    </p>
                  </div>
                  <?php
                  include("../Ing-Software/controlador/conectar_bd.php");

                  ?>
                  <form class="row g-3 needs-validation" action="" method="post">
                    <div class="col-12">
                      <label for="username" class="form-label">
                        Nombre de usuario
                      </label>
                      <div class="input-group has-validation">
                        <input type="text" name="username" class="form-control" id="usuario" required />
                        <div id="usernameError" class="invalid-feedback">
                          Este campo permite caracteres alfanuméricos
                        </div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="password" class="form-label">
                        Password
                      </label>
                      <div class="col-12 input-group">
                        <input type="password" name="password" class="form-control" id="password" require="" aria-label="" aria-describedby="basic">
                        <span class="input-group-text" id="basic" type="button"><i class="bi bi-eye-slash"></i></span>
                      </div>
                      <div class="invalid-feedback">
                        Por favor ingrese su contraseña
                      </div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe" />
                        <label class="form-check-label" for="rememberMe">
                          Recuérdame
                        </label>
                      </div>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">
                        Iniciar sesión
                      </button>
                    </div>
                  </form>

                  <?php
                  // Verificar si model.php está incluido
                  if (file_exists("../Ing-Software/modelo/modelo.php")) {
                    include("../Ing-Software/modelo/modelo.php");
                    // Sección de manejo de errores
                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                      // Recuperar los datos del formulario
                      $usuario = $_POST["username"];
                      $password = $_POST["password"];

                      // Validar el usuario y contraseña
                      $resultado = validarUsuario($usuario, $password);

                      // Redireccionar según el resultado
                      switch ($resultado) {
                        case '1':
                          header("Location: vista/home-r1.html");
                          break;
                        case '2':
                          header("Location: vista/home-r2.html");
                          break;
                        case '3':
                          header("Location: vista/home-r3.html");
                          break;
                        case '4':
                          header("Location: vista/home-r4.html");
                          break;
                        case '5':
                          header("Location: vista/home-r5.html");
                          break;
                        case '6':
                          header("Location: vista/home-r6.html");
                          break;
                        case '7':
                          header("Location: vista/home-r7.html");
                          break;
                        case 'password_no_coincide':
                          $error_message = "La contraseña no coincide.";
                          break;
                        case 'usuario_no_encontrado':
                          $error_message = "Usuario no encontrado.";
                          break;
                        default:
                          $error_message = "Error desconocido.";
                          break;
                      }

                      // Mostrar mensaje de error si existe
                      if (isset($error_message)) {
                        echo '<div class="alert alert-danger mt-3" role="alert">' . $error_message . '</div>';
                      }
                    }
                  } else {
                    echo '<div class="alert alert-danger mt-3" role="alert">Error: Archivo model.php no encontrado.</div>';
                  }
                  ?>

                </div>
              </div>

              <div class="credits">
                Designed by
                <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </main>
  <!-- End #main -->

  <!-- Agrega la referencia a Bootstrap JS y Popper.js si no están presentes -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!-- Vendor JS Files -->
  <script src="librerias/assets/vendor/apexcharts/apexcharts.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/chart.js/chart.umd.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/echarts/echarts.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/quill/quill.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/simple-datatables/simple-datatables.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/tinymce/tinymce.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/php-email-form/validate.js" type="text/javascript"></script>

  <!-- Template Main JS File -->
  <script src="librerias/assets/js/main.js" type="text/javascript"></script>
</body>

</html>