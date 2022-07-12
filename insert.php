<?php
    session_start();
    $username = $_SESSION['username'];
    $msg = $_REQUEST['msg'];

    require("db/db.php");

    mysqli_query($conn, "INSERT INTO chats(username, msg) VALUES('$username','$msg')");
    $result = mysqli_query($conn, "SELECT * FROM chats ORDER BY id DESC LIMIT 0, 10");

    while($row = mysqli_fetch_array($result)){
        echo "<span class='uname'>" . $row['username'] . 
		"</span>: <span class='msg'>" . $row['msg'] . 
		"</span><hr style='visibility:hidden'>";
    }
    mysqli_close($conn);
?>