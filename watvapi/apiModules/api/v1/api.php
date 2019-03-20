<?php
    //error_reporting(E_ERROR | E_WARNING | E_PARSE);
    error_reporting(0);
    //error_reporting(-1);
    header('Access-Control-Allow-Origin: *');
    
    require_once("rest.php");

    
    class API extends REST {

        public $super_user_id = 2;
    
        public $data = "";

        private $db = NULL;
    
        public function __construct(){
            parent::__construct();              // Init parent contructor
            $this->dbConnect();                 // Initiate Database connection
        }
        
        /*
         *  Database connection 
        */
        private function dbConnect(){
           // $this->db = mysqli_connect( self::DB_SERVER,self::DB_USER, self::DB_PASSWORD);
            //$this->db = new mysqli('db746526211.db.1and1.com','dbo746526211','321Garay','db746526211');
            $this->db = new mysqli('localhost','root','321Garay','moduleswebandtv');
        }

        // FUNCTION setWebsite
        private function sw(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }
            
            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_name = $this->_request['website_name'];
            $website_template = $this->_request['website_template'];
            $website_date = gmdate('Y/m/d H:i:s');
            $website_updated = gmdate('Y/m/d H:i:s');
            $website_status = 1;

            $data_pre = '';
            if ($this->verifyUserToken($user_id,$user_token)) {
                $mysql=$this->db;

                $sql = "INSERT INTO `website` (user_id,website_name,website_template, website_date, website_updated) VALUES ('$user_id','$website_name','$website_template', '$website_date', '$website_updated')";
                $mysql->query($sql);
                
                if ($mysql->affected_rows==1) {
                    $website_id = $mysql->insert_id;
                    $data_pre['website_id']=$website_id;
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
       
                $data=$data_pre;
                $mysql->close();

                $this->response($this->json($data), 200);

            }

            $this->response('',204);    // If no records "No Content" status

        }

        private function setRun(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $run_src = $this->_request['data'];

            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM run WHERE website_id = '$website_id' LIMIT 1");
                if ($row = $results->fetch_array()) {
                    $results = $mysql->query("UPDATE run SET run_src='$run_src' WHERE website_id = '$website_id' LIMIT 1");
                    $data['result']='true';
                }
                else {
                    $sql = "INSERT INTO run (website_id,run_src) VALUES ('$website_id','$run_src')";
                    $mysql->query($sql);
                    if($mysql->affected_rows==1){
                        $data['result']='true';
                    }
                    else {
                        $data['error']=$mysql->error;
                        $data['result']='false';
                    }                      
                }
            }

            $mysql->close();

            $this->response($this->json($data), 200);
        }

        private function getRun(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }

            $website_id = $this->_request['website_id'];
            $result = 'false';
            if ($website_id) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT run_src FROM run WHERE website_id = '$website_id' LIMIT 1");
                $result = 'false';
                $row = mysqli_fetch_assoc($results);
                if($row['run_src']){
                    $data['run_src'] = $row['run_src'];
                    $result = 'true';
                }
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }                
            }
            
            $this->response('',204);
        }

        private function gwl(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $result = 'false';

            if ($this->verifyUserToken($user_id,$user_token)) {
                $mysql=$this->db;

                if($user_id == $this->super_user_id){
                    $results = $mysql->query("SELECT * FROM website ORDER BY website_id DESC");
                }
                else {
                    $results = $mysql->query("SELECT * FROM website WHERE user_id = '$user_id' ORDER BY website_id DESC");
                }
                
                while($row = $results->fetch_array()) {
                    $data[]=$row;
                    $result = 'true';
                }
                
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }
            }
            
            $this->response('',204);  

        }

        private function gw(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }

            $website_linkname = $this->_request['website_linkname'];

            if ($website_linkname) {
                $mysql=$this->db;
                $data = array();
                if ($website_linkname){
                    $results = $mysql->query("SELECT * FROM website WHERE website_linkname = '$website_linkname' LIMIT 1");
                }
                while($row = $results->fetch_assoc()) {
                    $data=$row;
                }

                // Frees the memory associated with a result
                $results->free();
                // close connection 
                $mysql->close();

                $this->response($this->json($data), 200);
            }
            
            $this->response('',204);    // If no records "No Content" status

        }

        private function gwID(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $website_id = $this->_request['website_id'];

            if ($website_id) {
                $mysql=$this->db;
                $data = array();
                if ($website_id){
                    $results = $mysql->query("SELECT * FROM website LEFT JOIN social ON website.website_id = social.website_id LEFT JOIN link ON website.website_id = link.website_id LEFT JOIN contact ON website.website_id = contact.website_id LEFT JOIN template ON website.website_template = template.template_url WHERE website.website_id = '$website_id' LIMIT 1");                
                    while($row = $results->fetch_assoc()) {
                        $data=$row;
                    }
                }
                
                // Frees the memory associated with a result
                $results->free();
                // close connection 
                $mysql->close();

                $this->response($this->json($data), 200);
            }
            
            $this->response('',204);    // If no records "No Content" status

        }

        /*
         * Public method for access api.
         * This method dynmically call the method based on the query string
         *
         */
        public function processApi(){
            $func = strtolower(trim(str_replace("/","",$_REQUEST['rquest'])));
            if((int)method_exists($this,$func) > 0)
                $this->$func();
            else
                $this->response('',404);                // If the method not exist with in this class, response would be "Page not found".
        }
        
        /* 
         *  Simple login API
         *  Login must be POST method
         *  email : <USER EMAIL>
         *  pwd : <USER PASSWORD>
         */
    
        private function decode($token){
            return base64_decode($token);
        }

        private function encode($token){
            return base64_encode($token);
        }

        /*
         *  Encode array into JSON
        */
        private function json($data){
            if(is_array($data)){
                return json_encode($data);
            }
        }

        private function sendEmail($data){  
            $to=$data['to'];
            $from="info@weband.tv";
            $subject=$data['subject'];
            $message=$data['message'];
            /*$message="
                <div style='font-family: Arial, Helvetica, sans-serif; border: 1px solid #CCCCCC; color: #222222; padding: 30px;'>
                    <div style='font-size: 30px; padding-bottom: 30px;'>
                        <img src=\"https://weband.tv/instant/img/logo-full.png\" style=\"display: block; width: 300px;height: 69px\">
                    </div>
                    <div style='font-size: 16px; padding-bottom: 30px;'>
                        ".$message."
                    </div>
                    <div style='font-size: 12px; color: #222222; background:#F4F4F4; padding: 30px;'>
                        <p>
                            This email was sent by WebAndTV. To disable all email from WebAndTV, visit the following link: <a href='https://weband.tv/instant/admin/account/unsubscribe/?user_email=".$to."'>Unsubscribe</a>.
                        </p>
                        <p>
                            WebAnd.TV, Copyright 2018
                        </p>
                    </div>
                </div>";*/

            file_get_contents("http://s746357516.onlinehome.us/s/?e=".$to."&s=".base64_encode($subject)."&m=".urlencode($message));
            /*
            $headers  = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
            $headers .= 'To: '.$to . "\r\n";
            $headers .= 'From: '.$from . "\r\n";
            $headers .= 'Cc: ' . "\r\n";
            $headers .= 'Bcc: '. "\r\n";
            mail($to, $subject, $message, $headers);

            $message="Register: ".$to;*/
           // mail('computadoraweb@gmail.com', $subject, $message);
        }

        private function lu(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }           
            $user_email = $this->_request['user_email'];      
            $user_password = $this->_request['user_password'];
            if($user_email){
                $mysql=$this->db;

                $results = $mysql->query("SELECT * FROM user WHERE user_email = '$user_email' AND user_password = '$user_password' AND user_status = '1' LIMIT 1");
                
                $row = mysqli_fetch_assoc($results);
                if($row['user_id']){
                    $data_pre['user_id']=$row['user_id'];
                    $data_pre['user_firstname']=$row['user_firstname'];
                    $data_pre['user_token']=sha1($row['user_id']."-".gmdate('h:m:s'));
                    $this->setSessionUserToken($row['user_id'], $data_pre['user_token']);
                    $data=$data_pre;                
                    // Frees the memory associated with a result
                    $results->free();
                    // close connection 
                    $mysql->close();

                    $this->response($this->json($data), 200);
                }
                else {
                    $this->response('', 204);   // If no records "No Content" status
                }
            }
            
            // If invalid inputs "Bad Request" status message and reason
            $error = array('status' => "Failed", "msg" => "Invalid Email address or Password");
            $this->response($this->json($error), 400);
        }

        /* Forgot Password */
        private function fp(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }           
            $user_email = $this->_request['user_email'];

            if(filter_var($user_email, FILTER_VALIDATE_EMAIL)){

                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM user WHERE user_email = '$user_email' LIMIT 1");
                $row = mysqli_fetch_assoc($results);

                if($row['user_id']){

                    $data['to']=$row['user_email'];
                    $data['subject']='WebAndTV Reset Password';
                    $link='https://weband.tv/instant/admin/account/resetPassword.html?token_email=155e126b2045bf1d%2C154ef606e467d4e6&token='.$this->encode($row['user_id']).'&tk=45bf1d%2C154ef606efdsf';
                    $data['message']='Hi '.$row['user_firstname'].',<p>Forgot your password? You can <a href="'.$link.'">reset it here</a>.</p><p>Please reset it right away. This link will expire in 1 day.</p><p>If you did not initiate this password reset request, you can safely ignore this email.</p>';
                    $this->sendEmail($data);
                    $data_pre['user_id']=$row['user_id'];
                    $data_pre['result']='true';
                    // Frees the memory associated with a result
                    $results->free();
                    // close connection 
                    $mysql->close();

                }
                else {
                    $data_pre['result']='false';
                }

                $this->response($this->json($data_pre), 200);
            }
            
            // If invalid inputs "Bad Request" status message and reason
            $error = array('status' => "Failed", "msg" => "Invalid Email address or Password");
            $this->response($this->json($error), 400);
        }

        // SIGN UP USER
        private function suu(){   
            
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_firstname = $this->_request['user_firstname'];
            $user_lastname = $this->_request['user_lastname'];
            $user_email = $this->_request['user_email'];
            $user_password = $this->_request['user_password'];
            $user_token = '';
            $user_status = '0';
            
            if($user_email !=''){
                $mysql=$this->db;

                $sql = "INSERT INTO user (user_firstname, user_lastname, user_email, user_password, user_token, user_status) VALUES ('$user_firstname', '$user_lastname', '$user_email', '$user_password', '$user_token', '$user_status')";

                if ($result = $mysql->query($sql)) {
                   $data_result['user_id']=$mysql->insert_id;
                   $data_result['result']='true';
                }
                else {
                    $data_result['result']='false';
                }

                //SendEmail
                if($data_result['user_id']!=0){
                    $data['to']=$user_email;
                    $data['subject']='WebAndTV Account Developer Confirmation';
                    $link='https://weband.tv/instant/admin/account/signUpVerified.html?token=155e126b2045bf1d%2C154ef606e467d4e6&token_id='.$data_result['user_id'].'&tk=45bf1d%2C154ef606efdsf';
                    $data['message']='Thanks for signing up with WebAndTV! Please verify your email address by clicking on the email verification link or copying and pasting the link into the browser.<br><br> <a href="'.$link.'">'.$link.'</a>';
                    $this->sendEmail($data);
                }

                $this->response($this->json($data_result), 200);
            }
            $this->response('',204);    // If no records "No Content" status
        }

        private function verifyUserToken($user_id,$user_token){
            $mysql=$this->db;
            $sql = "SELECT * FROM user WHERE user_id = '$user_id' AND user_token = '$user_token' LIMIT 1";
            if ($result = $mysql->query($sql)) {
                return 'true';
            }
            else {
                return 'false';
            }
        }

        private function setSessionUserToken($user_id, $user_token){
            $mysql=$this->db;
            $mysql->query("UPDATE user SET user_token='$user_token' WHERE user_id = '$user_id' LIMIT 1");
        }

        private function isOwner($user_id,$website_id){
            $mysql=$this->db;
            $sql = "SELECT * FROM website WHERE user_id = '$user_id' AND website_id = '$website_id' LIMIT 1";
            if ($result = $mysql->query($sql)) {
                return 'true';
            }
            else {
                return 'false';
            }
        }

        private function setWebsiteStatus($website_id, $website_status){
            $mysql=$this->db;
            $mysql->query("UPDATE website SET website_status='$website_status' WHERE website_id = '$website_id' LIMIT 1");
        }

        private function gt(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }

            $mysql=$this->db;

            $results = $mysql->query("SELECT * FROM template ORDER BY template_id DESC");

            while($row = $results->fetch_assoc()) {
                $data[]=$row;
            }   
            
            // Frees the memory associated with a result
            $results->free();
            // close connection 
            $mysql->close();

            $this->response($this->json($data), 200);
            
        }

        private function gwPrivateData($website_id){
            $mysql=$this->db;
            $results = $mysql->query("SELECT * FROM website WHERE website_id = '$website_id' LIMIT 1");
            if ($row = $results->fetch_array()) {
                return $row;
            }
        }

        private function getPrivateDataWebsiteLinkname($website_linkname){
            $mysql=$this->db;
            $results = $mysql->query("SELECT * FROM website WHERE website_linkname = '$website_linkname' LIMIT 1");
            if ($row = $results->fetch_array()) {
                return $row;
            }
        }

        private function verifyUser(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }
            $mysql=$this->db;

            $user_id = $this->_request['token_id'];

            if ($user_id) {

                if($mysql->query("UPDATE user SET user_status='1' WHERE user_id = '$user_id' LIMIT 1")){
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
                
                $data=$data_pre;
                // close connection 
                $mysql->close();

                $this->response($this->json($data), 200);

            }

            $this->response('',204);    // If no records "No Content" status

        }

        private function rp(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }
            $mysql=$this->db;

            $user_id = $this->decode($this->_request['token']);
            $user_password = $this->_request['user_password'];

            if ($user_id) {

                $res=$mysql->query("UPDATE user SET user_password='$user_password' WHERE user_id = '$user_id' LIMIT 1");

                if($mysql->affected_rows==1){
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
                
                $data=$data_pre;
                // close connection 
                $mysql->close();

                $this->response($this->json($data), 200);

            }

            $this->response('',204);    // If no records "No Content" status

        }

        private function getModules(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $query = $this->_request['query'];
            $result = 'false';
            if ($this->verifyUserToken($user_id,$user_token)) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM module WHERE website_id = '$website_id' AND module_name LIKE '%$query%' ORDER BY module_id DESC");
                
                while($row = $results->fetch_assoc()) {
                    $data[]=$row;
                    $result='true';
                }

                // Frees the memory associated with a result
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }
            }
            
            $this->response('',204);
        }

        private function getModule(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];

            if ($this->verifyUserToken($user_id,$user_token)) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM website WHERE website_id = '$website_id' LIMIT 1");
                $data = mysqli_fetch_assoc($results);
                
                // Frees the memory associated with a result
                $results->free();
                $mysql->close();
                $this->response($this->json($data), 200);
            }
            
            $this->response('',204);
        }

        private function addToProgram(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $module_id = $this->_request['module_id'];
            $program_begin = $this->_request['program_begin'];
            $program_end = '00:00:00';//$this->_request['program_end'];
            $program_day = $this->_request['program_day'];
            $data_pre='';
            
            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                $sql = "INSERT INTO `program` (website_id,module_id,program_begin,program_end,program_day) VALUES ('$website_id','$module_id','$program_begin','$program_end','$program_day')";
                $mysql->query($sql);
                
                if($mysql->affected_rows==1){
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
                
                $data=$data_pre;                
            }

            // close connection 
            $mysql->close();

            $this->response($this->json($data), 200);
        }

        private function createModule(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $module_name = $this->_request['module_name'];
            $module_link = $this->_request['module_link'];
            $module_dashboard = $this->_request['module_dashboard'];

            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                $sql = "INSERT INTO module (website_id,module_name,module_link,module_dashboard) VALUES ('$website_id','$module_name','$module_link','$module_dashboard')";
                $mysql->query($sql);
                
                if($mysql->affected_rows==1){
                    $data['result']='true';
                }
                else {
                    $data['result']='false';
                }           
            }

            // close connection 
            $mysql->close();

            $this->response($this->json($data), 200);
        }

        private function updateModule(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $module_id = $this->_request['module_id'];
            $module_name = $this->_request['module_name'];
            $module_link = $this->_request['module_link'];
            $module_dashboard = $this->_request['module_dashboard'];

            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                if($module_id){
                    $mysql->set_charset("utf8");
                    $res=$mysql->query("UPDATE module SET module_name='$module_name',module_link='$module_link',module_dashboard='$module_dashboard' WHERE module_id = '$module_id' LIMIT 1");
                }
                
                if($mysql->affected_rows==1){
                    $data['result']='true';
                }
                else {
                    $data['result']='false';
                }

            }

            // close connection 
            $mysql->close();

            $this->response($this->json($data), 200);
        }

        private function deleteModule(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];

            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                $data_pre = array();
                if($mysql->query("DELETE FROM website WHERE website_id='$website_id' AND user_id='$user_id' LIMIT 1 ")){
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
                $data = $data_pre;
                $mysql->close();
                $this->response($this->json($data), 200);
            }
            $this->response('',204);  
        }

        private function deleteProgram(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $program_id = $this->_request['program_id'];

            if($this->verifyUserToken($user_id,$user_token)){
                $mysql=$this->db;
                $data_pre = array();
                if($mysql->query("DELETE FROM program WHERE program_id='$program_id' AND website_id='$website_id'  LIMIT 1")){
                    $data_pre['result']='true';
                }
                else {
                    $data_pre['result']='false';
                }
                $data = $data_pre;
                $mysql->close();
                $this->response($this->json($data), 200);
            }
            $this->response('',204);  
        }

        private function getProgram(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $website_id = $this->_request['website_id'];
            $query = $this->_request['query'];
            $query_day = $this->_request['query_day'];
            $result = 'false';

            if ($website_id) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM program LEFT JOIN module ON program.module_id = module.module_id WHERE program.website_id = '$website_id' AND module.module_name LIKE '%$query%' AND program.program_day LIKE '%$query_day%' ORDER BY program.program_begin DESC");
                
                while($row = $results->fetch_assoc()) {
                    $data[]=$row;
                    $result='true';
                }                    
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }
            }
            
            $this->response('',204);
        }

        private function privateLoginVerify($user_email, $user_password) {
            if($user_email!=''){
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM user WHERE user_email = '$user_email' AND user_password = '$user_password' AND user_status = '1' LIMIT 1");
                $row = mysqli_fetch_assoc($results);
                if($row['user_id']){
                    return true;
                }
            }
            return false;
        }

        private function privateSetPlayer($website_id) {
            $mysql=$this->db;
            $data_website = $this->gwPrivateData($website_id);
            $website_linkname = $data_website['website_linkname'];
            $website_linkname_parent = $data_website['website_linkname_parent'];
            $website_type = $data_website['website_type'];
            $player_src = $this->privateGetProgramJSON($website_id);
            $player_update = gmdate('Y/m/d H:i:s');
            $lu_time = gmdate('H:i:s');
            $results = $mysql->query("SELECT * FROM player WHERE website_id = '$website_id' LIMIT 1");
            if ($row = $results->fetch_array()) {
                $results = $mysql->query("UPDATE player SET player_src='$player_src',player_update='$player_update' WHERE website_id = '$website_id' LIMIT 1");
                
                // DUPLICATED SERVER 
                $results = $mysql->query("UPDATE playlist SET playlist_src='$player_src',website_linkname_parent='$website_linkname_parent',website_type='$website_type' WHERE website_linkname = '$website_linkname' LIMIT 1");
                $results = $mysql->query("UPDATE lu SET lu_time='$lu_time' WHERE website_id = '$website_id' LIMIT 1");
            }
            else {
                $sql = "INSERT INTO player (website_id,player_src,player_update) VALUES ('$website_id','$player_src','$player_update')";
                $mysql->query($sql);

                // DUPLICATED SERVER
                $sql = "INSERT INTO playlist (website_linkname,website_id,playlist_src,website_linkname_parent,website_type) VALUES ('$website_linkname','$website_id','$player_src','$website_linkname_parent','$website_type')";
                $mysql->query($sql);

                $sql = "INSERT INTO lu (website_id,lu_time) VALUES ('$website_id','$lu_time')";
                $mysql->query($sql);
            }
            return true;
        }

        private function privateGetProgramJSON($website_id){
            $mysql=$this->db;
            $results = $mysql->query("SELECT program.module_id,module.module_name,module.module_link,program.program_begin,program.program_end,program.program_day FROM program LEFT JOIN module ON program.module_id = module.module_id WHERE program.website_id = '$website_id' ORDER BY program.program_begin DESC");
            while($row = $results->fetch_assoc()) {
                $data_pre['module_id'] = $row['module_id'];
                $data_pre['module_name'] = rawurlencode($row['module_name']);
                $data_pre['module_link'] = $row['module_link'];
                $data_pre['program_begin'] = $row['program_begin'];
                $data_pre['program_end'] = $row['program_end'];
                $data_pre['program_day'] = $row['program_day'];
                $data[]=$data_pre;
            }
            return $this->json($data); 
        }

        /* CREATE A WEBSITE_SRC BY URL API*/
        private function setPlayer(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $user_id = $this->_request['user_id'];
            $user_token = $this->_request['user_token'];
            $user_email = $this->_request['user_email'];
            $user_password = $this->_request['user_password'];
            $website_id = $this->_request['website_id'];

            if ($this->verifyUserToken($user_id,$user_token)) {
                $data['result'] = false;
                if ($this->privateLoginVerify($user_email,$user_password)){
                    if($this->privateSetPlayer($website_id)){
                        $data['result'] = true;
                    }
                }
                $this->response($this->json($data), 200);
            }
    
            $this->response('',204);    // If no records "No Content" status
        }

        private function getPlayer(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $website_id = $this->_request['website_id'];
            $result = 'false';
            if ($website_id) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT player_src FROM player WHERE website_id = '$website_id' LIMIT 1");
                $result = 'false';
                $row = mysqli_fetch_assoc($results);
                if($row['player_src']){
                    $data['player_src'] = $row['player_src'];
                    $result = 'true';
                }
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }                
            }
            
            $this->response('',204);
        }

        private function getPlaylist(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $website_linkname = $this->_request['website_linkname'];

            if ($website_linkname) {
                $mysql=$this->db;

                $results = $mysql->query("SELECT playlist_src,website_id,website_linkname_parent,website_type FROM playlist WHERE website_linkname = '$website_linkname' LIMIT 1");
                $data = mysqli_fetch_assoc($results);
                
                $results->free();
                $mysql->close();
                $this->response($this->json($data), 200);
            }
            
            $this->response('',204);
        }

        private function playlistLastUpdate(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $website_id = $this->_request['website_id'];

            if ($website_id) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM lu WHERE website_id = '$website_id' LIMIT 1");
                $data = mysqli_fetch_assoc($results);
                $results->free();
                $mysql->close();
                $this->response($this->json($data), 200);
            }
            
            $this->response('',204);
        }

        private function getChannels(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }
            
            $query = $this->_request['query'];
            
            $mysql=$this->db;

            $results = $mysql->query("SELECT website_id,website_name,website_linkname,website_description FROM website WHERE website_type = '2' ORDER BY website_name ASC");
            while($row = $results->fetch_assoc()) {
                $data[]=$row;
            }
            
            $results->free();
            $mysql->close();
            $this->response($this->json($data), 200);
            
        }

        private function s(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $q = $this->_request['q'];
            $result = 'false';
            if ($q) {
                $mysql=$this->db;
                $results = $mysql->query("SELECT website_linkname,website_name FROM website WHERE website_name LIKE '%$q%' LIMIT 5");
                $result = 'false';
                while($row = $results->fetch_assoc()) {
                    $data[]=$row;
                    $result = 'true';
                }
                $results->free();
                $mysql->close();
                if($result=='true'){
                    $this->response($this->json($data), 200);                    
                }
                else {
                    $this->response('',204);
                }
            }
            
            $this->response('',204);    // If no records "No Content" status

        }

    }
    // Initiiate Library
    
    $api = new API;
    $api->processApi();
?>