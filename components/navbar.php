<?php
    if(isset($_SESSION["name"])){
        $name = $_SESSION["name"];
    }

    if(isset($_SESSION["name"])){
        echo '<div class="navbar__wrapper">
        <div class="navbar container">
            <div class="logo">
                <h6>CHIT-CHAT</h6>
            </div>
    
            <div class="nav__links">
                <a href="#" class="nav__link nav__name">'. $name .'</a>
                <a href="#" class="nav__link" onClick = "logout(event)">logout</a>
            </div>
        </div>
    </div>';
    }
    else{
        echo '<div class="navbar__wrapper">
        <div class="navbar container">
            <div class="logo">
                <h6>CHIT-CHAT ❤️</h6>
            </div>
    
            <div class="nav__links">
                <a href="#" class="nav__link">REPO</a>
            </div>
        </div>
    </div>';
    }
?>


