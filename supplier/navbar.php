<!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" >Empresa || Carrito de Compras</a>
            </div>
			
			<ul class=" nav navbar-nav">
				<li>
                   <a href="index.php"><i class="fa fa-product-hunt fa-fw"></i> Mis Productos</a>
                </li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<span class="fa fa-copy fa-fw"></span> Reportes <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="sales.php"><span class="fa fa-money fa-fw"></span>  Reporte de Ventas</a></li>
						<li class="divider"></li>
						<li><a href="inventory.php"><span class="fa fa-barcode"></span>  Reporte de Inventario</a></li>
                    </ul> 
				</li>
			</ul>
			
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<span class="glyphicon glyphicon-lock"></span> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu">
						<li><a href="#account" data-toggle="modal"><span class="glyphicon glyphicon-lock"></span>  Mi Cuenta</a></li>
						<li class="divider"></li>
						<li><a href="#profile" data-toggle="modal"><span class="glyphicon glyphicon-user"></span>  Mi Perfil</a></li>
						<li class="divider"></li>
                        <li><a href="#logout" data-toggle="modal"><i class="fa fa-sign-out fa-fw"></i> Salir</a></li>
                    </ul>   
                </li>
            </ul>
        </nav>