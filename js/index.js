// Send and load chats via AJAX

function sendmsg() {
    if (chatform.msg.value == '') {
        alert('Enter your message !');
        return;
    }
    var msg = chatform.msg.value;
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById('chatlogs').innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open('GET', 'insert.php?msg=' + msg, true);
    xmlhttp.send();
}
$(document).ready(function (e) {
    $.ajaxSetup({ cache: false });
    setInterval(function () { $('#chatlogs').load('chats.php'); }, 2000);
});