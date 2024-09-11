<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Appointments</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
        .btn-custom {
            margin: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Appointments</h1>

        <!-- Display success message -->
        <c:if test="${not empty message}">
            <div class="alert alert-success">${message}</div>
        </c:if>

        <!-- Display existing appointments -->
        <h3>Existing Appointments</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Doctor</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.doctor.name}</td>
                        <td>${appointment.date}</td>
                        <td>${appointment.time}</td>
                        <td>
                            <a href="deleteAppointment/${appointment.id}?patientId=${patientId}" class="btn btn-danger btn-custom">Cancel</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Form to book a new appointment -->
        <h3>Book New Appointment</h3>
        <form action="/bookAppointment" method="post">
            <input type="hidden" name="patientId" value="${patientId}" />
            <div class="form-group">
                <label for="doctorId">Select Doctor:</label>
                <select id="doctorId" name="doctor.id" class="form-control" required>
                    <c:forEach var="doctor" items="${doctors}">
                        <option value="${doctor.id}">${doctor.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="time">Time:</label>
                <input type="time" id="time" name="time" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-primary btn-custom">Book Appointment</button>
        </form>
    </div>
</body>
</html>
