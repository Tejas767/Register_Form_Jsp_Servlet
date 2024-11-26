<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Professional Form</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
  <style>
   body {
  font-family: 'Roboto', sans-serif;
  background: #f0f4f8;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
}
.success-message {
  position: absolute;
  top: 10px; /* Distance from the top of the page */
  left: 10px; /* Distance from the left of the page */
  color: green;
  font-size: 16px;
  font-weight: bold;
}


.form-container {
  background: #fff;
  padding: 20px 30px;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  width: 400px; /* Fixed width */
  max-width: 90%; /* Ensures responsiveness */
  box-sizing: border-box; /* Prevents padding from adding to width */
}
    .form-container h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-group label {
      display: block;
      color: #555;
      margin-bottom: 5px;
      font-weight: 500;
    }
    .form-group input[type="text"],
    .form-group input[type="password"],
    .form-group input[type="email"],
    .form-group select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    .form-group .radio-group {
      display: flex;
      gap: 15px;
    }
    .form-group .radio-group input {
      margin-right: 5px;
    }
    .form-group select {
      background: #fff;
    }
    .form-group button {
      width: 100%;
      padding: 10px;
      background: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    .form-group button:hover {
      background: #45a049;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Registration Form</h2>
  <form action="regform" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter your name" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group">
      <label>Gender:</label>
      <div class="radio-group">
        <label><input type="radio" name="gender" value="male" required> Male</label>
        <label><input type="radio" name="gender" value="female"> Female</label>
      </div>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>
    </div>
    <div class="form-group">
      <label for="city">City:</label>
      <select id="city" name="city" required>
        <option value="" disabled selected>Select your city</option>
        <option value="mumbai">Mumbai</option>
        <option value="delhi">Delhi</option>
        <option value="bangalore">Bangalore</option>
        <option value="kolkata">Kolkata</option>
        <option value="chennai">Chennai</option>
      </select>
    </div>
    <div class="form-group">
      <button type="submit">Submit</button>
    </div>
  </form>
</div>

</body>
</html>
