<section class="card__section">
    <div class="card__wrapper">
        <div class="anime_girl_div">
            <img src="https://sso.crunchyroll.com/static/images/register-hime.png" alt="anime_girl">
            <div class="error__msg none" id="error-msg">
                A user with the same name is already inside! - Please change your name!
            </div>
        </div>
        <form class="login__form container" id="login-form" onsubmit="login(event)">
            <input type="text" placeholder="Enter your name" class="form__input" name="name">
            <input type="text" placeholder="Enter room id" class="form__input" name="room">
            <button type="submit" class="black__btn"><b>Enter the chat</b></button>
            
            <!-- <a href="?create-room">Create room!</a> -->
        </form>




    </div>
</section>
