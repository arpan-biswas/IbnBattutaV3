<?php

  require_once 'DBOperations.php';

  $response = array();

  if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['firstname']) and isset($_POST['lastname']) and isset($_POST['email']) and isset($_POST['username']) and isset($_POST['password']))
     {
      $db = new DBOperations();

      $result = $db->createUser($_POST['firstname'],$_POST['lastname'],$_POST['email'],$_POST['username'],$_POST['password'],0);
      if($result == 1)
        {
          $response['error'] = false;
          $response['message'] = "User registered Successfully";
        }elseif ($result == 2){
          $response['error'] = true;
          $response['message'] = "Error occured, please try again";
        }elseif ($result == 0){
          $response['error'] = true;
          $response['message'] = "User Already Exists";
        }
    }else{
      $response['error'] = true;
      $response['message'] = "Required fields are missing";
    }
  }else{
    $response['error'] = true;
    $response['message'] = "Invalid Request";
  }

  echo json_encode($response);
?>
