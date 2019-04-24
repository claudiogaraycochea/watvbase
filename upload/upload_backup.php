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
	echo "file_size:".$file_size;
	if($file_size==''){
		echo "Size exceed";
		die();
	}
  $user_id = $_POST["user"];
  /*echo "File Name: ".$file_name;
  echo "File Type: ".$file_type;
  echo "File Size: ".$file_size;*/
  //print_r($_FILES["image"]);

/*  $image_size = getimagesize($tmp_name); 
  print_r($image_size);*/

	function resize($img, $w, $h, $newfilename) {
		
		//Check if GD extension is loaded
		if (!extension_loaded('gd') && !extension_loaded('gd2')) {
			trigger_error("GD is not loaded", E_USER_WARNING);
			return false;
		}
		
		//Get Image size info
		$imgInfo = getimagesize($img);
		switch ($imgInfo[2]) {
			case 1: $im = imagecreatefromgif($img); break;
			case 2: $im = imagecreatefromjpeg($img);  break;
			case 3: $im = imagecreatefrompng($img); break;
			default:  trigger_error('Unsupported filetype!', E_USER_WARNING);  break;
		}
		
		//If image dimension is smaller, do not resize
		if ($imgInfo[0] <= $w && $imgInfo[1] <= $h) {
			$nHeight = $imgInfo[1];
			$nWidth = $imgInfo[0];
		}else{
			//yeah, resize it, but keep it proportional
			if ($w/$imgInfo[0] > $h/$imgInfo[1]) {
				$nWidth = $w;
				$nHeight = $imgInfo[1]*($w/$imgInfo[0]);
			}else{
				$nWidth = $imgInfo[0]*($h/$imgInfo[1]);
				$nHeight = $h;
			}
		}
		$nWidth = round($nWidth);
		$nHeight = round($nHeight);
		
		$newImg = imagecreatetruecolor($nWidth, $nHeight);
		
		/* Check if this image is PNG or GIF, then set if Transparent*/  
		if(($imgInfo[2] == 1) OR ($imgInfo[2]==3)){
			imagealphablending($newImg, false);
			imagesavealpha($newImg,true);
			$transparent = imagecolorallocatealpha($newImg, 255, 255, 255, 127);
			imagefilledrectangle($newImg, 0, 0, $nWidth, $nHeight, $transparent);
		}
		imagecopyresampled($newImg, $im, 0, 0, 0, 0, $nWidth, $nHeight, $imgInfo[0], $imgInfo[1]);
		
		//Generate the file, and rename it to $newfilename
		switch ($imgInfo[2]) {
			case 1: imagegif($newImg,$newfilename); break;
			case 2: imagejpeg($newImg,$newfilename);  break;
			case 3: imagepng($newImg,$newfilename); break;
			default:  trigger_error('Failed resize image!', E_USER_WARNING);  break;
		}

		return $newfilename;
  }
  
	function subir_imagen($original,$archivo_final,$anchura,$type){
		$w=$anchura;
		$h=$anchura;
		$new_file=resize($original, $w, $h, $archivo_final);
		copy($new_file,$archivo_final);
		return true;
	}

	function upload_photo($original,$destino,$big,$type) {
		subir_imagen($original,$destino,$big,$type);
		return true;
	}


  function isFormatAccepted($file_type){
    if(($file_type=="image/png")||($file_type=="image/jpeg")){
      return true;
    }
    else {
      return false;
    }
  }

  if(($file_size<2000000)&&($file_size!='')&&(isFormatAccepted($file_type)==1)){
		$folder_user = "upload/{$user_id}/";
		$path = $_FILES['image']['name'];
		$ext = pathinfo($path, PATHINFO_EXTENSION);
		$hash=date('dmYHis');
		$file_destiny = $hash.'.'.$ext;
		if (!file_exists($folder_user)) {  
			mkdir($folder_user, 0777);
		}
    $result= move_uploaded_file($_FILES["image"]["tmp_name"], $folder_user.$file_destiny);
    $original=$folder_user.$file_destiny;
    $destino=$folder_user.$file_destiny;
    $big=300;
    $type='jpg';
    upload_photo($original,$destino,$big,$type);

    if($result['error']==0){
			$data['filename_server']='https://modules.weband.tv/upload/'.$folder_user.$file_destiny;
			echo json_encode($data);
    }
    else {
			$data['error']="Error upload";
			echo json_encode($data);
    }
  }
  else {
		$data['error']="Error";
		echo json_encode($data);
  }

?>