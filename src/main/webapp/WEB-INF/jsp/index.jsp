<%@ include file="header.jsp" %>
    <div class="card" >
        <div class="card-body">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="slider.png" alt="First slide" style="height: 450px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Slider One</h5>
                            <p>About Slider One</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="slider2.jpeg" style="height: 450px;" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Slider Two</h5>
                            <p>About Slider Two</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="slider3.png" style="height: 450px;" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Slider Three</h5>
                            <p>About Slider Three</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<br>
<div class="row">

        <div class="card col-sm-3" style="width: 18rem;">
            <img class="card-img-top" src="img1.png" style="height: 150px" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>

        <div class="card col-sm-3" style="width: 18rem;">
            <img class="card-img-top" src="img2.png" style="height: 150px" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>

        <div class="card col-sm-3" style="width: 18rem;">
            <img class="card-img-top" src="img3.jpg" style="height: 150px" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>

        <div class="card col-sm-3" style="width: 18rem;">
            <img class="card-img-top" src="web.jpg" style="height: 150px" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>


</div>

        <table class="table table-bordered">
            <thead class="">
            <tr>
                <th scope="col">S/N</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Operation</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${lists}" >
                <tr>
                    <th scope="row">${list.id}</th>
                    <td>${list.firstName}</td>
                    <td>${list.lastName}</td>
                    <td>
                        <a href="/view/${list.id}" class="btn btn-primary"> <i class="fa fa-list"></i> View </a>
                        <a href="/edit/${list.id}" class="btn btn-success"> <i class="fa fa-pencil"></i> Edit </a>
                        <a href="/delete/${list.id}" class="btn btn-danger"> <i class="fa fa-trash-o"></i> Delete </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <hr>
        <form action="/save" method="POST">
            <div class="row">
                <div class="form-group row col-md-12">
                    <div class="col-sm-4">

                        <input type="text" required class="form-control" name="firstname"  placeholder="Enter Your First Name">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <div class="col-sm-4">

                        <input type="text" required class="form-control" name="lastname" placeholder="Enter Your Last Name">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <div class="col-sm-4">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Add Details</button>
                    </div>
                </div>
            </div>



        </form>

    </div>
</div>

<%@ include file="footer.jsp" %>

