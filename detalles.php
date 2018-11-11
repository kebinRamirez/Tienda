<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Restaurante Online</title>
	<link rel="stylesheet" type="text/css" href="./css/estiloDetalles.css">
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<h1>Detalles</h1>
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
		</a>
	</header>
	<section>
		
	<?php
		include 'conexion.php';
		$re=mysqli_query($obj_conexion,"select * from productos where id=".$_GET['id'])or die(mysqli_error($obj_conexion));
		while ($f=mysqli_fetch_array($re)) {
		?>
			<center>
				<img src="./productos/<?php echo $f['imagen'];?>"><br>
				<span><?php echo $f['nombre'];?></span><br>
				<span>Precio: <?php echo $f['precio'];?></span><br>
				<span>descripcion: <?php echo $f['descripcion'];?></span><br>
				<a href="./carritodecompras.php?id=<?php echo $f['id'];?>">Añadir al carrito</a>
			</center>
	<?php
		}	
	?>
	</section>
</body>
</html>