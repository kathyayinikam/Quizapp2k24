<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'quiz_website');
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve and sanitize user input
    $username = $conn->real_escape_string($_POST['username']);
    $password = $_POST['password'];

    // Check if user exists
    $sql = "SELECT * FROM users WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            echo "Login successful";
        } else {
            echo "Incorrect password. <a href='../forgot_password.html'>Forgot Password?</a>";
        }
    } else {
        echo "No user found with this username.";
    }

    $conn->close();
}
?>
