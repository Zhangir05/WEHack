<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Admin</h1>
<form id="authorization-form">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="last-name">Last Name:</label><br>
    <input type="text" id="last-name" name="last-name" required><br>
    <label for="father-name">Father Name:</label><br>
    <input type="text" id="father-name" name="father-name" required><br>
    <label for="birthdate">Birthdate:</label><br>
    <input type="date" id="birthdate" name="birthdate" required><br>
    <label for="status">Status:</label><br>
    <select id="status" name="status" required>
        <option value="student">Student</option>
        <option value="teacher">Teacher</option>
    </select><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" required><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" required><br>
    <button type="submit">Submit</button>
</form>

<script>
    const authorizationForm = document.getElementById("authorization-form");
    authorizationForm.addEventListener("submit", (event) => {
        event.preventDefault();

        // Collect user information from the form
        const name = document.getElementById("name").value;
        const lastName = document.getElementById("last-name").value;
        const fatherName = document.getElementById("father-name").value;
        const birthdate = document.getElementById("birthdate").value;
        const status = document.getElementById("status").value;
        const email = document.getElementById("email").value;
        const password = document.getElementById("password").value;

        // Send the user information to the server for authorization
        const xhr = new XMLHttpRequest();
        xhr.open("POST", "/authorize");
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onload = () => {
            if (xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                if (response.success) {
                    // Redirect the user to the authorized page
                    window.location.href = "/authorized";
                } else {
                    console.error(response.message);
                }
            } else {
                console.error(xhr.responseText);
            }
        };
        const data = JSON.stringify({ name, lastName, fatherName, birthdate, status, email, password });
        xhr.send(data);
    });
</script>
</body>
</html>