<?php
   if($_SESSION["perfil"] == "Vendedor"){
   
     echo '<script>
   
       window.location = "inicio";
   
     </script>';
   
     return;
   
   }
   
   ?>
<div class="content-wrapper">
   <section class="content-header">
      <h1>
         Administrar Categorías
      </h1>
      <ol class="breadcrumb">
         <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
         <li class="active">Administrar Categorías</li>
      </ol>
   </section>
   <section class="content">
      <div class="box">
         <div class="box-header with-border">
            <button class="btn btn-primary mb1 bg-purple" data-toggle="modal" data-target="#modalAgregarCategoria"><i class="fa fa-plus-circle"></i>&nbsp&nbspAgregar Categoría
            </button>
         </div>
         <div class="box-body">
            <table class="table table-bordered table-striped dt-responsive tablas" width="100%">
               <thead>
                  <tr>
                     <th style="width:10px">#</th>
                     <th>Categoria</th>
                     <th>Fecha</th>
                     <th>Acciones</th>
                  </tr>
               </thead>
               <tbody>
                  <?php
                     $item = null;
                     $valor = null;
                     
                     $categorias = ControladorCategorias::ctrMostrarCategorias($item, $valor);
                     
                     foreach ($categorias as $key => $value) {
                      
                       echo ' <tr>
                     
                               <td>'.($key+1).'</td>
                     
                               <td class="text-uppercase">'.$value["categoria"].'</td>
                               <td class="text-uppercase">'.$value["fecha"].'</td>
                     
                               <td>
                     
                                 <div class="btn-group">                                 
                                   <button class="btn btn-warning btnEditarCategoria" idCategoria="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarCategoria"><i class="fa fa-pencil"></i></button>
                                 </div> ';
                     
                                   if($_SESSION["perfil"] == "Administrador"){
                     
                                     echo '<div class="btn-group">
                                     <button class="btn btn-danger btnEliminarCategoria" idCategoria="'.$value["id"].'"><i class="fa fa-trash"></i></button>';
                     
                                   }
                     
                                 echo '</div>  
                     
                               </td>
                     
                             </tr>';
                     }
                     
                     ?>
               </tbody>
            </table>
         </div>
      </div>
   </section>
</div>
<!--=====================================
   MODAL AGREGAR CATEGORÍA
   ======================================-->
<div id="modalAgregarCategoria" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <form role="form" method="post">
            <!--=====================================
               CABEZA DEL MODAL
               ======================================-->
            <div class="modal-header" style="background:#6f42c1; color:white">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title">Agregar Categoría</h4>
            </div>
            <!--=====================================
               CUERPO DEL MODAL
               ======================================-->
            <div class="modal-body">
               <div class="box-body">
                  <!-- ENTRADA PARA EL NOMBRE -->
                  <div class="form-group">
                     <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-th"></i></span> 
                        <input type="text" class="form-control input-lg" name="nuevaCategoria" placeholder="Ingresar categoría" required>
                     </div>
                  </div>
               </div>
            </div>
            <!--=====================================
               PIE DEL MODAL
               ======================================-->
            <div class="modal-footer">
               <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>
               <button type="submit" class="btn btn-primary mb1 bg-purple"><i class="fa fa-save"></i>&nbsp&nbspGuardar</button>
            </div>
            <?php
               $crearCategoria = new ControladorCategorias();
               $crearCategoria -> ctrCrearCategoria();
               
               ?>
         </form>
      </div>
   </div>
</div>
<!--=====================================
   MODAL EDITAR CATEGORÍA
   ======================================-->
<div id="modalEditarCategoria" class="modal fade" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <form role="form" method="post">
            <!--=====================================
               CABEZA DEL MODAL
               ======================================-->
            <div class="modal-header" style="background:#6f42c1; color:white">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title">Editar Categoría</h4>
            </div>
            <!--=====================================
               CUERPO DEL MODAL
               ======================================-->
            <div class="modal-body">
               <div class="box-body">
                  <!-- ENTRADA PARA EL NOMBRE -->
                  <div class="form-group">
                     <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-th"></i></span> 
                        <input type="text" class="form-control input-lg" name="editarCategoria" id="editarCategoria" required>
                        <input type="hidden"  name="idCategoria" id="idCategoria" required>
                     </div>
                  </div>
               </div>
            </div>
            <!--=====================================
               PIE DEL MODAL
               ======================================-->
            <div class="modal-footer">
               <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>
               <button type="submit" class="btn btn-primary mb1 bg-purple"><i class="fa fa-save"></i>&nbsp&nbspGuardar Cambios</button>
            </div>
            <?php
               $editarCategoria = new ControladorCategorias();
               $editarCategoria -> ctrEditarCategoria();
               
               ?> 
         </form>
      </div>
   </div>
</div>
<?php
   $borrarCategoria = new ControladorCategorias();
   $borrarCategoria -> ctrBorrarCategoria();
   
   ?>