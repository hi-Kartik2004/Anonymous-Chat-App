<?php
session_start();

require_once("./config.php");
$conn = mysqli_connect(db_server, db_username, db_password, db_name);
if (!$conn) {
    echo "Unable to connect with the database!";
} else {
    $output = "";
    if (isset($_GET["login"])) {
        if (isset($_POST["name"]) && !empty(trim($_POST["name"])) && !empty(trim($_POST["room"]))) {
            global $conn;
            $name = $_POST["name"];
            $room = $_POST["room"];


            $checkUserQuery = "SELECT * FROM `users` WHERE name = '$name' AND inside = 1;";

            $checkUserRun = mysqli_query($conn, $checkUserQuery);

            if (mysqli_num_rows($checkUserRun) > 0) {
                echo "User with the same name is already inside!";
            } else {
                global $conn;

                $checkUserQuery2 = "SELECT * FROM `users` WHERE name = '$name' AND inside = 0;";

                $checkUserRun2 = mysqli_query($conn, $checkUserQuery2);

                if (mysqli_num_rows($checkUserRun2) > 0) {
                    $updateTheLogin = "UPDATE `users` SET inside = 1 WHERE name = '$name';";

                    $run = mysqli_query($conn, $updateTheLogin);

                    if ($run) {
                        $_SESSION["name"] = $name;
                        $_SESSION["room"] = $room;
                        $joinedMsg = $name . " joined the chat!";
                        $joinedMessageQuery = "INSERT INTO `messages` (`name`, `message`, `dt`, room_no) VALUES ('adminXYZ', '$joinedMsg', current_timestamp(), '$room');";

                        $joinedMessageQueryRun = mysqli_query($conn, $joinedMessageQuery);

                        if($joinedMessageQueryRun){
                            echo "user inserted to database";
                        }
                        
                    } else {
                        echo "update failed - user exists";
                    }
                } else {
                    global $output;
                    global $room;

                    $insertUserQuery = "INSERT INTO `users` (`name`, `inside`, `reported_count`, `dt`, `room_no`) VALUES ('$name', '1', '0', current_timestamp(), $room);";

                    $insertUserRun = mysqli_query($conn, $insertUserQuery);

                    if ($insertUserRun) {
                        $_SESSION["name"] = $name;
                        $_SESSION["room"] = $room;
                        $joinedMsg = $name . " joined the chat!";
                        $joinedMessageQuery = "INSERT INTO `messages` (`name`, `message`, `dt`, `room_no`) VALUES ('adminXYZ', '$joinedMsg', current_timestamp(), $room);";

                        $joinedMessageQueryRun = mysqli_query($conn, $joinedMessageQuery);

                        if($joinedMessageQueryRun){
                            echo "user inserted to database";
                        }
                    } else {
                        echo "Insert query execution failed";
                    }
                }
            }
        } else {
            echo "Don't have a name or room id? - you can choose a random room id.";
        }
    } 
    
    
    else if (isset($_GET["logout"])) {
        $name = $_SESSION["name"];
        $updateLoginStatus = "UPDATE `users` set inside = 0 WHERE name = '$name';";
        $updateLoginRun = mysqli_query($conn, $updateLoginStatus);
        if ($updateLoginRun) {
            $room = $_SESSION["room"];
            unset($_SESSION["name"]);
            session_destroy();
            $joinedMsg = $name . " left the chat!";
            $joinedMessageQuery = "INSERT INTO `messages` (`name`, `message`, `dt`, room_no) VALUES ('adminXYZ', '$joinedMsg', current_timestamp(), $room);";

            $joinedMessageQueryRun = mysqli_query($conn, $joinedMessageQuery);

            if($joinedMessageQueryRun){
                // echo "user inserted to database";
            }else{
                echo "updation failed";
            }
            echo "logout success";
        } else {
            echo "logout failed";
        }
    } 
    
    
    else if (isset($_GET["sendmessage"])) {
        $msg = $_POST["message"];
        $name = $_SESSION["name"];
        $room = $_SESSION["room"];

        if (empty(trim($_POST["message"]))) {
            echo "message is empty";
        } else {
            $insertMessageQuery = "INSERT INTO `messages` (`name`, `message`, `dt`, `room_no`) VALUES ('$name', '$msg', current_timestamp(), $room);";

            $insertMessageRun = mysqli_query($conn, $insertMessageQuery);

            if ($insertMessageQuery) {
                echo "message sent";
            } else {
                echo "unable to upload message to db";
            }
        }
    } 
    
    
    else if (isset($_GET["fetchmessages"])) {
        $room = $_SESSION["room"];
        $fetchmessagesQuery = "SELECT * FROM `messages` WHERE room_no = '$room';";
        $fetchmessagesRun = mysqli_query($conn, $fetchmessagesQuery);
        global $output;

        if (mysqli_num_rows($fetchmessagesRun) > 0) {
            while ($row = mysqli_fetch_assoc($fetchmessagesRun)) {
                if ($row["name"] == $_SESSION["name"]) {
                    $output .= '            <div class="left__msg">
                    <div class="msg__name">
                        ' . $row["name"] . '
                    </div>
    
                    <div class="msg__content">
                        <span>' . $row["message"] . '</span>
                    </div>
    
                    <div class="msg__time">
                        ' . $row["dt"] . '
                    </div>
                </div>';
                }
                else if($row["name"] == "adminXYZ"){
                    $output .= '<p style="text-align: center; background-color: #67610b; border-radius: 10px; color: white; padding: 0.25rem">'. $row["message"] .'</p>';
                }
                else {
                    $output .= ' <div class="right__msg">
                    <div class="right__msg__name">
                        ' . $row["name"] . '
                    </div>
    
                    <div class="msg__content">
                        <span>' . $row["message"] . '</span>
                    </div>
    
                    <div class="right__msg__time">
                        ' . $row["dt"] . '
                    </div>
                </div>';
                }
            }
            echo $output;
        }
    } 
    
    else if (isset($_GET["create-room"])){
        $room = $_POST["room"];

        $insertRoomQuery = "INSERT INTO `rooms` (`id`, `room_no`, `dt`) VALUES (NULL, '$room', current_timestamp());";

        $roomRun = mysqli_query($conn, $insertRoomQuery);

        if($roomRun){

        }
        else{
            echo "unable to create room";
            die();
        }
    }
    
    else {
        echo "login.php accessed";
    }
}
