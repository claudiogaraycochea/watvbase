<?php

echo "Hello";

/*

CODIGO PARA INCRUSTAR EN BUY PASS

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="4XF93GR8PY4XA">
<input type="hidden" name="lc" value="AL">
<input type="hidden" name="item_name" value="1 Week">
<input type="hidden" name="item_number" value="33">
<input type="hidden" name="amount" value="11.00">
<input type="hidden" name="custom" value="19">
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="button_subtype" value="services">
<input type="hidden" name="no_note" value="1">
<input type="hidden" name="no_shipping" value="1">
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_SM.gif:NonHosted">
<input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_buynow_SM.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
</form>

*/


$first_name = $_POST['first_name']; // First name
$last_name = $_POST['last_name']; // Last name
$payer_email = $_POST['payer_email']; // email of buyer
$payment_status = $_POST['payment_status']; // Completed
$txn_id = $_POST['txn_id']; // TAX ID NUMBER
$custom = $_POST['custom']; // USER ID
$mc_currency = $_POST['mc_currency']; // USD
$item_name = $_POST['item_name']; // 1 Day
$item_number = $_POST['item_number'];// plan_id
$mc_gross = $_POST['mc_gross'];// mc_gross
$mc_gross_1 = $_POST['mc_gross_1'];// mc_gross
$mc_fee = $_POST['mc_fee'];// mc_fee
$address_country = $_POST['address_country'];// address_country

$message.="<br>first_name: ".$first_name;
$message.="<br>last_name: ".$last_name;
$message.="<br>payer_email: ".$payer_email;
$message.="<br>payment_status: ".$payment_status;
$message.="<br>txn_id: ".$txn_id;
$message.="<br>custom: ".$custom;
$message.="<br>mc_currency: ".$mc_currency;
$message.="<br>item_name: ".$item_name;
$message.="<br>item_number: ".$item_number;
$message.="<br>mc_gross: ".$mc_gross;
$message.="<br>mc_gross_1: ".$mc_gross_1;
$message.="<br>mc_fee: ".$mc_fee;
$message.="<br>address_country: ".$address_country;

mail("computadoraweb@gmail.com","asuntillo","Este es el cuerpo del mensaje ".$message);

?>