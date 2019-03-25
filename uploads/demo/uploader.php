<?php

define("NAMETHUMB", "/tmp/thumbtemp");

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

    function bytesToSize1024($bytes, $precision = 2) {
        $unit = array('B','KB','MB');
        return @round($bytes / pow(1024, ($i = floor(log($bytes, 1024)))), $precision).' '.$unit[$i];
    }

    $sFileName = $_FILES['file_background']['name'];
    $sFileType = $_FILES['file_background']['type'];
    $sFileSize = bytesToSize1024($_FILES['file_background']['size'], 1);
           
    $tmp_name = $_FILES["file_background"]["tmp_name"];
    $path_parts = pathinfo($_FILES["file_background"]["name"]);
    $extension = $path_parts['extension'];
    $name = $_FILES["file_background"]["name"];
    $size = $_FILES["file_background"]["size"];
    $website_id = $_POST["website_id"];
    $hash=date('dMYHis');
    $name_file = 'website_bg_'.$_POST["website_id"].'_'.$hash.'.'.$extension;

    $dirname = $website_id;  
    $filename = "../../../../uploads/website/{$dirname}";  
    if(($size<5000000)&&(($extension=='jpg')||($extension=='png'))){
        if (!file_exists($filename)) {  
            mkdir($filename, 0777);
        }
        if(move_uploaded_file($tmp_name, '../../../../uploads/website/'.$dirname.'/'.$name_file)){
            $data['filename']=$name_file;
            $data['website_background']='https://modules.weband.tv/uploads/website/'.$dirname.'/'.$name_file;
            echo json_encode($data);

            $original=$data['website_background'];
            $destino='../../../../uploads/website/'.$dirname.'/'.$name_file;
            $big=300;
            $type='jpg';
            upload_photo($original,$destino,$big,$type);
        }
    }
    else {
        $data['filename']='';
        echo json_encode($data);
    }


?>