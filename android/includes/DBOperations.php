<?php
    class DBOperations{

      private $con;
      function __construct(){
        require_once dirname(__FILE__).'/DBConnect.php';
        $db = new DBConnect();
        $this -> con = $db->connect();
      }

      public function createUser($firstname, $lastname, $email, $username, $pass, $points){
        if($this->isUserExist($username, $email)){
          return 0;
        }
        else{
        $stmt = $this->con->prepare("INSERT INTO users (id,firstname,lastname,email,username,password,points) VALUES (NULL,?,?,?,?,?,?);");
        $stmt -> bind_param("sssssi",$firstname,$lastname,$email,$username,$pass,$points);
        if($stmt -> execute()){
          return 1;
        }else{
          return 2;
        }
      }
    }
    public function userLogin($email, $pass){
      $stmt = $this->con->prepare("SELECT * FROM users WHERE email = ? AND password = ?");
      $stmt->bind_param("ss", $email, $pass);
      $stmt->execute();
      $stmt->store_result();
      return $stmt->num_rows > 0;
    }

    public function getUserByEmail($email){
      $stmt = $this->con->prepare("SELECT * FROM users WHERE email = ?");
      $stmt->bind_param("s", $email);
      $stmt->execute();
      return $stmt->get_result()->fetch_assoc();
    }
      private function isUserExist($username, $email){
        $stmt = $this->con->prepare("SELECT * FROM users WHERE username = ? OR email = ?");
        $stmt->bind_param("ss", $username, $email);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows>0 ;
      }
    }
?>
