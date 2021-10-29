<div id="back"></div>

<div class="login-box">
  
    <div class="login-logo">
      <a href="inicio"><b>Sistema Web</b></a>
    </div>

  <div class="login-box-body">

    <p class="login-box-msg">Ingrese sus datos de Acceso</p>

    <form method="post">

      <div class="form-group has-feedback">

        <input type="text" class="form-control" placeholder="Usuario" name="ingUsuario" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" placeholder="Contraseña" name="ingPassword" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      
      </div>

       <div class="row">

          <div class="col-xs-8">
          <a href="#">Olvidé mi contraseña</a>
          </div>

          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Ingresar</button>
          </div>

        </div>
      </form>

      <?php

        $login = new ControladorUsuarios();
        $login -> ctrIngresoUsuario();
        
      ?>

    </form>


  </div>

</div>
