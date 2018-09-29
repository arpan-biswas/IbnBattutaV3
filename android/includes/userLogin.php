<?php
  require_once 'DBOperations.php';

  $response = array();

  if($_SERVER['REQUEST_METHOD']== 'POST'){

    if(isset($_POST['email']) and isset($_POST['password'])){
      $db = new DBOperations();

      if ($db->userLogin($_POST['email'], $_POST['password'])){
        $user = $db->getUserByEmail($_POST['email']);
        $response['error'] = false;
        $response['id'] = $user['id'];
        $response['firstname'] = $user['firstname'];
        $response['lastname'] = $user['lastname'];
        $response['email'] = $user['email'];
        $response['username'] = $user['username'];
        $response['points'] = $user['points'];

      }else{
        $response['error'] = true;
        $response['message'] = "Required Fields are Missing";
      }
    }else{
      $response['error'] = true;
      $response['message'] = "Required Fields are Missing";
    }
  }

  echo json_encode($response);
  ?>
