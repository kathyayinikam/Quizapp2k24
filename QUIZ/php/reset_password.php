<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'quiz_website');
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve and sanitize user input
    $token = $conn->real_escape_string($_POST['token']);
    $new_password = password_hash($_POST['new_password'], PASSWORD_BCRYPT);

    // Check if token is valid
    $sql = "SELECT * FROM users WHERE reset_token = '$token'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $sql = "UPDATE users SET password = '$new_password', reset_token = NULL WHERE reset_token = '$token'";
        if ($conn->query($sql) === TRUE) {
            echo "Password reset successful.";
        } else {
            echo "Error updating record: " . $conn->error;
        }
    } else {
        echo "Invalid token.";
    }

    $conn->close();
} else if (isset($_GET['token'])) {
    // Display the reset password form
    $token = $_GET['token'];
    echo '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reset Password - Quiz Website</title>
        <link rel="stylesheet" href="../css/styles.css">
    </head>
    <body>
        <div class="container">
            <h2>Reset Password</h2>
            <form id="reset-password-form" action="reset_password.php" method="POST">
                <input type="hidden" name="token" value="' . htmlspecialchars($token) . '">
                <label for="new_password">New Password:</label>
                <input type="password" id="new_password" name="new_password" required>
                <button type="submit">Reset Password</button>
            </form>
        </div>
    </body>
    </html>';
}
?>
