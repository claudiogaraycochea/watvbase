<?php 
  header('Access-Control-Allow-Origin: *');
  $method = $_SERVER['REQUEST_METHOD'];
  if($method == "OPTIONS") {
    die();
  }
  $tmp_name = $_FILES["image"]["tmp_name"];
	$file_name = $_FILES["image"]["name"];
  $file_type = $_FILES["image"]["type"];
  $file_size = $_FILES["image"]["size"];
  echo "_________________11";
  echo "File Name: ".$file_name;
  echo "File Type: ".$file_type;
  echo "File Size: ".$file_size;
  print_r($_FILES["image"]);
  if(($file_size<2000000)&&($file_size!='')){
    $result= move_uploaded_file($_FILES["image"]["tmp_name"], 'upload/'.$file_name);
    if($result['error']==0){
      echo "Uploaded succefully";
    }
    else {
      echo "Error upload";
    }
  }
  else {
    echo "Size Exceded";
  }
  
  echo "___________________";
  print_r($result);
?>