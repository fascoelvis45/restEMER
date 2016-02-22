 
<!-- Left side column. contains the logo and sidebar -->


<section class="content-header">
    <h1>
        REPORTE PEDIDOS
        <small>Lista de Pedidos PENDIENTES<FECHA DEL SISTEMA> </small>
    </h1>

    <div class="box-body">

        <button class="btn btn-success btn-lg" onclick="cargarURL('pedido/addPedidoListaMesas.jsp', 'content')">
            <b>    <i class="fa fa-plus"></i> PEDIDO</b>
            
        </button>

    </div>

</div>



</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box">



                <div class="box-header with-border">
                    <h3 class="box-title"><b>17/02/2016</b></h3>

                    <div class="btn-group pull-right">
                        
                        <button type="button" class="btn btn-info">PENDIENTES</button> 
                        
                        <button type="button" class="btn btn-success">ENTREGADOS</button> 
                        
                        <button type="button" class="btn btn-danger">TERMINADOS</button>
                        
                    </div>  
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-bordered">
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Task</th>
                            <th>Progress</th>
                            <th style="width: 40px">Label</th>
                        </tr>

                        <tr>
                            <td>4.</td>
                            <td>Fix and squish bugs</td>
                            <td> 
                            </td>
                            <td> 
                                <button class="btn btn-success btn-sm">
                                    <b>    <i class="fa fa-plus"></i> PEDIDO</b>
                                </button></td>
                        </tr>
                    </table>
                </div><!-- /.box-body -->

                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="#">&laquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>
            </div><!-- /.box -->


        </div><!-- /.col -->

    </div><!-- /.row -->

</section><!-- /.content -->

