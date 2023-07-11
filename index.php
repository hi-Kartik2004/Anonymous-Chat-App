<?php
    session_start();

    include_once("./components/header.php");
    include_once("./components/navbar.php");
    if(isset($_GET["chat"]) && isset($_SESSION["name"])){
        include_once("./components/chat.php");
    }
    else if(!isset($_GET["chat"]) && isset($_SESSION["name"])){
        include_once("./components/chat.php");        
    }
    // else if(isset($_GET["create-room"])){
    //     include_once("./components/create_room.php");
    // }
    else if(!isset($_SESSION["name"]) ){
        include_once("./components/login.php");
    }

    include_once("./components/footer.php");
    include_once("./components/foot.php");
?>