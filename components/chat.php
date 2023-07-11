<div class="chat__wrapper">
    <div class="chat container">
        <div class="chat__top">
            <h5>Welcome to world chat</h5>
            <p>This is the beta version v1.0.1</p>
        </div>

        <div class="chats" id="chats">
            <div class="left__msg">
                <div class="msg__name">
                    test name
                </div>

                <div class="msg__content">
                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui asperiores aliquid.</span>
                </div>

                <div class="msg__time">
                    11:07:2023 / 18:52 IST
                </div>
            </div>
            <p>Kartikeya Joined the chat!</p>
            <div class="right__msg">
                <div class="right__msg__name">
                    test name
                </div>

                <div class="msg__content">
                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui asperiores aliquid.</span>
                </div>

                <div class="right__msg__time">
                    11:07:2023 / 18:52 IST
                </div>
            </div>

            <div class="left__msg">
                <div class="msg__name">
                    test name
                </div>

                <div class="msg__content">
                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui asperiores aliquid.</span>
                </div>

                <div class="msg__time">
                    11:07:2023 / 18:52 IST
                </div>
            </div>

            <div class="right__msg">
                <div class="right__msg__name">
                    test name
                </div>

                <div class="msg__content">
                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui asperiores aliquid.</span>
                </div>

                <div class="right__msg__time">
                    11:07:2023 / 18:52 IST
                </div>
            </div>
        </div>

        <form class="message__form" onsubmit="sendMessage(event)" id="message-form">
            <input type="text" placeholder="Start here!" class="message__form__input" id="message-input" name="message" required>
            <button type="submit" class="send__btn">send</button>
        </form>
    </div>

</div>