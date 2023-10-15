<?php
use App\Models\Brand;

$id = $_REQUEST['id'];
$brand =  Brand::find($id);
if($brand==null){
    header("location:index.php?option=brand&cat=trash");
}
//
$brand->delete(); //Xoá khỏi database
header("location:index.php?option=brand&cat=trash");