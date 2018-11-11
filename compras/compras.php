<?php
session_start();
include "../conexion.php";
	$arreglo=$_SESSION['carrito'];
	$numeroventa=0;
	$re=mysqli_query($obj_conexion,"select * from compras order by numeroventa DESC limit 1") or die(mysqli_error($obj_conexion));

	while( $f=mysqli_fetch_array($re) ){
		$numeroventa=$f['numeroventa'];
	}
	
	if ($numeroventa==0) {
		$numeroventa=1;
	}else{
		$numeroventa=$numeroventa+1;
	}
	for ($i=0; $i <count($arreglo) ; $i++) { 
		mysqli_query($obj_conexion,"insert into compras (numeroventa, imagen, nombre, precio, cantidad, subtotal) values(
			".$numeroventa.",
			'".$arreglo[$i]['Imagen']."',
			'".$arreglo[$i]['Nombre']."',
			'".$arreglo[$i]['Precio']."',
			'".$arreglo[$i]['Cantidad']."',
			'".($arreglo[$i]['Precio']*$arreglo[$i]['Cantidad'])."'
			) ")or die(mysqli_error($obj_conexion));
	}
	unset($_SESSION['carrito']);
	header("Location: ../index.php");
?>