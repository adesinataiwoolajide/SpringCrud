<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <title>SPRING CRUD OPERATION</title>
</head>
<body>
<div class="card">
    <div class="card-body">
        <nav class="navbar navbar-expand-lg fixed-top navbar navbar-dark bg-danger" style="background-color: palevioletred;">
            <a class="navbar-brand" href="/" style="color: red">JETHRO</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">User </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/staff"></span>Staff</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/categories"></span>Category</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/projects">Projects</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="/services">Services</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="/partners">Partners</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="/resources">Resources</a>
                    </li>



                    <li class="nav-item active">
                        <a class="nav-link" href="/gallery">Gallery</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/aboutus">About Us</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/contactus">Contact Us</a>
                    </li>
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Staff Category
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Consultant</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Engineer</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Senior Consultant</a>
                        </div>
                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>

        <br>
        <br><br>