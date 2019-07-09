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
            // $this->db = mysqli_connect( HOST, DB_USER, DB_PASSWORD,DB_SERVER);
            $this->db = new mysqli('localhost','root','321Garay','visitorswebandtv');
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

        // FUNCTION setWebsite
        private function setVoteItem(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }
            
            $module_website_id = $this->_request['module_website_id'];
            $vote_item_id = $this->_request['vote_item_id'];
            $vote_item_date = gmdate('Y/m/d H:i:s');

            //if ($this->verifyUserToken($user_id,$user_token)) {
            if($module_website_id){
                $mysql=$this->db;
                $sql = "INSERT INTO vote_item (module_website_id,vote_item_id,vote_item_date) VALUES ('$module_website_id','$vote_item_id','$vote_item_date')";
                $mysql->query($sql);
                
                if ($mysql->affected_rows==1) {
                    $vote_item_index = $mysql->insert_id;
                    $data['module_website_id']=$module_website_id;
                    $data['result']='true';
                }
                else {
                    $data['result']='false';
                }
       
                $mysql->close();

                $this->response($this->json($data), 200);

            }

            $this->response('',204);    // If no records "No Content" status

        }

        // FUNCTION setWebsite
        private function getVoteResults(){
            if($this->get_request_method() != "GET"){
                $this->response('',406);
            }
            
            $module_website_id = $this->_request['module_website_id'];

            //if ($this->verifyUserToken($user_id,$user_token)) {
            if($module_website_id){
                $mysql=$this->db;
                $results = $mysql->query("SELECT vote_item_id, COUNT(*) AS vote_result FROM vote_item WHERE module_website_id = '$module_website_id' GROUP BY vote_item_id");       
                while($row = $results->fetch_assoc()) {
                    $data[]=$row;
                }
       
                $mysql->close();

                $this->response($this->json($data), 200);

            }

            $this->response('',204);    // If no records "No Content" status

        }

        private function verifyVisitorToken($visitor_id,$visitor_token){
            $mysql=$this->db;
            $sql = "SELECT * FROM visitor WHERE visitor_id = '$visitor_id' AND visitor_token = '$visitor_token' LIMIT 1";
            if ($result = $mysql->query($sql)) {
                return 'true';
            }
            else {
                return 'false';
            }
        }

        private function setSessionVisitorToken($visitor_id, $visitor_token){
            $mysql=$this->db;
            $mysql->query("UPDATE visitor SET visitor_token='$visitor_token' WHERE visitor_id = '$visitor_id' LIMIT 1");
        }

        private function visitorFBLogin(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $visitor_email = $this->_request['visitor_email'];
            $visitor_firstname = $this->_request['visitor_firstname'];
            $visitor_lastname = $this->_request['visitor_lastname'];
            $visitor_image = $this->_request['visitor_image'];

            if($visitor_email!=''){
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM visitor WHERE visitor_email = '$visitor_email' LIMIT 1");       
                $row = mysqli_fetch_assoc($results);
                if($row['visitor_email']){
                    $data['visitor_id']=$row['visitor_id'];
                    $data['visitor_firstname']=$row['visitor_firstname'];
                    $data['visitor_lastname']=$row['visitor_lastname'];
                    $data['visitor_image']=$row['visitor_image'];
                    $data['visitor_token']=sha1($row['visitor_id']."-".gmdate('H:i:s'));
                    $this->setSessionVisitorToken($row['visitor_id'],$data['visitor_token']);
                    $data['status'] = 'updated';
                    $data['result'] = 'true';
                }
                else {
                    $visitor_password = 'Yxu456';
                    $visitor_date = gmdate('Y/m/d H:i:s');
                    $sql = "INSERT INTO visitor (visitor_email,visitor_password,visitor_firstname,visitor_lastname,visitor_image,visitor_token,visitor_date) VALUES ('$visitor_email','$visitor_password','$visitor_firstname','$visitor_lastname','$visitor_image','$visitor_token','$visitor_date')";
                    if ($result = $mysql->query($sql)) {
                        $data['visitor_id']=$mysql->insert_id;
                        $data['visitor_firstname']=$visitor_firstname;
                        $data['visitor_lastname']=$visitor_lastname;
                        $data['visitor_image']=$visitor_image;
                        $data['visitor_token']=sha1($data['visitor_id']."-".gmdate('H:i:s'));
                        $this->setSessionVisitorToken($data['visitor_id'],$data['visitor_token']);
                        $data['result'] = 'true';
                    }
                    else {
                        $data['result'] = 'false';
                    }
                }
            }
            
            $results->free();
            $mysql->close();
            $this->response($this->json($data), 200);
            
        }

        private function visitorSignUp(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }

            $visitor_email = $this->_request['visitor_email'];
            $visitor_password = $this->_request['visitor_password'];
            $visitor_firstname = $this->_request['visitor_firstname'];
            $visitor_lastname = $this->_request['visitor_lastname'];

            if($visitor_email!=''){
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM visitor WHERE visitor_email = '$visitor_email' LIMIT 1");       
                $row = mysqli_fetch_assoc($results);
                if($row['visitor_email']){
                    $data['result'] = 'false';
                }
                else {
                    $visitor_date = gmdate('Y/m/d H:i:s');
                    $sql = "INSERT INTO visitor (visitor_email,visitor_password,visitor_firstname,visitor_lastname,visitor_token,visitor_date) VALUES ('$visitor_email','$visitor_password','$visitor_firstname','$visitor_lastname','$visitor_token','$visitor_date')";
                    if ($result = $mysql->query($sql)) {
                        $data['visitor_id']=$mysql->insert_id;
                        $data['visitor_firstname']=$visitor_firstname;
                        $data['visitor_token']=sha1($data['visitor_id']."-".gmdate('H:i:s'));
                        $this->setSessionVisitorToken($data['visitor_id'],$data['visitor_token']);
                        $data['status'] = 'created';
                        $data['result'] = 'true';
                    }
                    else {
                        $data['result'] = 'false';
                    }
                }
            }
            
            $results->free();
            $mysql->close();
            $this->response($this->json($data), 200);
            
        }

        private function visitorLogin(){
            if($this->get_request_method() != "POST"){
                $this->response('',406);
            }           
            $visitor_email = $this->_request['visitor_email'];      
            $visitor_password = $this->_request['visitor_password'];
            if($visitor_email){
                $mysql=$this->db;
                $results = $mysql->query("SELECT * FROM visitor WHERE visitor_email = '$visitor_email' AND visitor_password = '$visitor_password' LIMIT 1");
                $row = mysqli_fetch_assoc($results);
                if($row['visitor_id']){
                    $data['visitor_id']=$row['visitor_id'];
                    $data['visitor_firstname']=$row['visitor_firstname'];
                    $data['visitor_token']=sha1($row['visitor_id']."-".gmdate('h:m:s'));
                    $this->setSessionVisitorToken($row['visitor_id'], $data_pre['visitor_token']);
                    $data['result']='true';
                    $results->free();
                    $mysql->close();
                    $this->response($this->json($data), 200);
                }
                else {
                    $data['result']='false';
                    $this->response($this->json($data), 200);
                }
            }
            // If invalid inputs "Bad Request" status message and reason
            $error = array('status' => "Failed", "msg" => "Invalid Email address or Password");
            $this->response($this->json($error), 400);
        }

    }
    // Initiiate Library
    
    $api = new API;
    $api->processApi();
?>