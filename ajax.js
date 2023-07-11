console.log("ajax script is working");

const login = (e) => {
  e.preventDefault();
  const form = document.getElementById("login-form");
  const formData = new FormData(form);
  const errorMsg = document.getElementById("error-msg");

  // create an XML object
  const xhr = new XMLHttpRequest();

  // receive back the response
  xhr.onreadystatechange = () => {
    if (xhr.status == 200 && xhr.readyState == 4) {
      console.log(xhr.response);
      if (xhr.response == "user inserted to database") {
        location.href = "?chat";
      } else {
        errorMsg.innerHTML = xhr.response;
        errorMsg.style.display = "block";
      }
    }
  };

  // open a request
  xhr.open("POST", "./php/actions.php?login", true);

  // send the request / make the request
  xhr.send(formData);
};

const logout = (e) => {
  e.preventDefault();

  // initliase XML http object;
  const xhrLogout = new XMLHttpRequest();

  // receving a response
  xhrLogout.onload = () => {
    if (xhrLogout.status == 200 && xhrLogout.readyState == 4) {
      if (xhrLogout.response == "logout success") {
        location.href = "?login";
      }
    }
  };

  // open a request
  xhrLogout.open("GET", "./php/actions.php?logout", true);

  // send a request
  xhrLogout.send();
};

async function sendMessage(e) {
  await new Promise((resolve) => {
    e.preventDefault();
    const message = document.getElementById("message-form");
    const messageInput = document.getElementById("message-input");
    // initliase XML http object;
    const xhrMessage = new XMLHttpRequest();

    // receving a response
    xhrMessage.onload = () => {
      if (xhrMessage.status == 200 && xhrMessage.readyState == 4) {
        if (xhrMessage.response == "message sent") {
          console.log(xhrMessage.response);
          messageInput.value = "";
        }
      }
    };

    // open a request
    xhrMessage.open("POST", "./php/actions.php?sendmessage", true);

    // send a request
    const messagedata = new FormData(message);
    xhrMessage.send(messagedata);

    resolve();
  });

  fetchMessages();
}

const fetchMessages = () => {
  const chats = document.querySelector(".chats");
  const chatContainer = document.getElementById("chats");
  const previousScrollPosition = chatContainer.scrollHeight - chatContainer.scrollTop;
  
  const xh = new XMLHttpRequest();
  
  xh.onload = () => {
    if (xh.status == 200 && xh.readyState == 4) {
      chats.innerHTML = xh.response;
      
      if (shouldScrollToBottom(previousScrollPosition)) {
        scrollToBottom();
      }
    }
  };
  
  xh.open("GET", "./php/actions.php?fetchmessages", true);
  xh.send();
};

function shouldScrollToBottom(previousScrollPosition) {
  const chatContainer = document.getElementById("chats");
  const scrollOffset = 10; // Adjust this value if needed
  
  return (
    previousScrollPosition <= chatContainer.clientHeight + scrollOffset ||
    chatContainer.scrollTop === 0
  );
}

function scrollToBottom() {
  const chatContainer = document.getElementById("chats");
  chatContainer.scrollTop = chatContainer.scrollHeight;
}

setInterval(fetchMessages, 100);

  
