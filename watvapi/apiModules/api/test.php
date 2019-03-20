<?php
/*function cidr_range( $cidr, $chkip=null )
{
    // Assign IP / mask
    list($ip,$mask) = explode("/",$cidr);
    echo($cidr."********************");
    // Sanitize IP
    $ip1 = preg_replace( '_(\d+\.\d+\.\d+\.\d+).*$_', '$1', "$ip.0.0.0" );

    // Calculate range
    $ip2 = long2ip( ip2long( $ip1 ) - 1 + ( 1 << ( 32 - $mask) ) );

    // are we cidr range cheking?
    if ( $chkip != null && ! filter_var( $chkip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4) === false )
    {
        return ip2long( $ip1 ) <= ip2long( $chkip ) && ip2long( $ip2 ) >= ip2long( $chkip ) ? true : false;
    } else {
        return "$ip1 - $ip2";
    }
}

var_dump( cidr_range( "127.0/16", "127.0.0.1" ) );   // bool(true)
var_dump( cidr_range( "127.0/16", "192.168.0.1" ) ); // bool(false)
var_dump( cidr_range( "192.168.0.0/24" ) );          // string(27) "192.168.0.0 - 192.168.0.255"*/


function gethostbyaddr6($ip6) {
  $ipv6calc = "/bin/ipv6calc";
  $dig = "/usr/bin/dig";
  $file = popen($ipv6calc." --in ipv6addr --out revnibbles.int ".escapeshellarg($ip6), r);
  $ip = fread($file, 128);
  pclose($file);
  if ((substr($ip, 0, 5) == "Error") || (!$ip)) return "Address is not a valid IPv6 address";
  $file = popen($dig." ptr ".$ip, r);                
   while (!feof ($file)) {
    $buffer = fgets($file, 128);
    if (substr($buffer, 0, 1) == ";") continue;
    $buffer = explode(" ", $buffer);
    if ($buffer[3] == "PTR") {
     $host = substr(trim($buffer[4]), 0, -1);
     pclose($file);
     return $host;
    }
   }
  pclose($file);
  return $ip6;
}

echo gethostbyaddr6($_SERVER[REMOTE_ADDR]);
?>
