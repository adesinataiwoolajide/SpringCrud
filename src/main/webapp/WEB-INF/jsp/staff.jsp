<%@ include file="header.jsp" %>


        <form action="/saving_staff" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="form-group row col-md-12">
<%--                    <div class="col-sm-3">--%>

<%--                        <input type="file" required class="form-control"--%>
<%--                               name="staffpassport">--%>
<%--                        <span style="color: red;">This Field is Required.</span>--%>
<%--                    </div>--%>
                    <div class="col-sm-3">

                        <input type="text" required class="form-control"
                               name="staff_name" placeholder="Enter The Staff Name">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-3">

                        <input type="number" required class="form-control"
                               name="phone_number" placeholder="Enter The Staff Phone">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-3">

                        <input type="email" required class="form-control"
                               name="email" placeholder="Enter The Staff E-mail">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <div class="col-sm-3">

                        <select class="form-control select" required name="staff_type">
                            <option value="">-- Select The Staff Type --</option>

                            <option value=""></option>
                            <option value="Consultant">Consultant</option>
                            <option value="Programmer">Programmer</option>
                            <option value="Software Engineer">Software Engineer</option>

                        </select>

                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Add Staff</button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
        <table class="table table-bordered">
            <thead class="">
            <tr>
                <th scope="col">S/N</th>
                <th scope="col">Staff Name</th>
                <th scope="col">Staff Category</th>
                <th scope="col">E-Mail</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Actions</th>

            </tr>
            </thead>
            <tbody>

            <c:forEach var="list" items="${lists}" >
                <tr>
                    <th scope="row">${list.id}</th>
                    <td>${list.staffname}</td>
                    <td>${list.stafftype}</td>
                    <td>${list.email}</td>
                    <td>${list.phonenumber}</td>

                    <td>

                        <a href="/edit_staff/${list.id}" class="btn btn-success">
                            <i class="fa fa-pencil"></i> Edit Staff</a>
                        <a href="/delete_staff/${list.id}" class="btn btn-danger">
                            <i class="fa fa-trash-o"></i> Delete Staff</a>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>



    </div>
</div>
<%@ include file="footer.jsp" %>
