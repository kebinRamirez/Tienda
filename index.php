<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Restaurante Online</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<h1>Restaurante Online</h1>
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">

		</a>
		<a href="./login.php" title="Acceso admin">
			<img src="./imagenes/login.png">
		</a>
	</header>
	<section>
		
	<?php
		include 'conexion.php';
		$re=mysqli_query($obj_conexion,"select * from productos")or die(mysqli_error($obj_conexion));
		while ($f=mysqli_fetch_array($re)) {
		?>


			<div class="producto">
			<center>
				<img src="./productos/<?php echo $f['imagen'];?>"><br>
				<span><?php echo $f['nombre'];?></span><br>
				<a href="./detalles.php?id=<?php echo $f['id'];?>">ver</a>
			</center>
		</div>
	<?php
		}	
	?>
		
		

		
	</section>
</body>
</html>