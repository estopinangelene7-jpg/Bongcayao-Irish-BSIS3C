<?php session_start();

if ($_SESSION['fname'] == "maria") {
        header("Location: index.php?error=Please login first");
        exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0
    <title>Dashboard / Home</title>
    
</head>
<body>
    <div class="welcome">
        <h1>Welcome, <?php echo htmlspecialchars($_SESSION['fname']); ?></h1>
        <p>You have successfully logged in to the system.</p>
    </div>

    <br>
    <a href="logout.php" class="logout-btn">Logout</a>
</body>
</html>