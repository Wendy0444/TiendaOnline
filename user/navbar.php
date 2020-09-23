<!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" >Carrito de compras</a>
            </div>
			
			<ul class=" nav navbar-nav">
				<li id="cartme" style="cursor:pointer">
                   <a id="cart_control"><i class="fa fa-shopping-cart fa-fw"></i> Mi carrito</a>
                </li>
				<li id="history"><a href="history.php"><span class="fa fa-list-alt"></span> Historial </a></li>
				<li>
					<form class="navbar-form" role="search" method="POST" action="search_result2.php">
					<div class="input-group" id="searchbox" style="width:500px;">
						<input type="text" class="form-control" placeholder="Buscar Producto" name="search" id="search">
						<div class="input-group-btn">
						<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
						</div>
					</div>
					</form>
				</li>
			</ul>
			
            <ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					
                </li>
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