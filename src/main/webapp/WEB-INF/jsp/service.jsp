<%@ include file="header.jsp" %>

<form action="/saveservices" method="POST">
    <div class="row">
        <div class="form-group row col-md-12">
            <div class="col-sm-6">

                <input type="text" required class="form-control"
                       name="servicename" placeholder="Enter The Service Name">
<%--                <span style="color: red;">This Field is Required.</span>--%>
            </div>


            <div class="col-sm-6">
                <button type="submit" class="btn btn-danger btn-lg btn-block">Add Service</button>
            </div>
        </div>
    </div>
</form>
<hr>
<table class="table table-bordered">
    <thead class="">
    <tr>
<%--        <th scope="col">S/N</th>--%>
        <th scope="col">Service Name</th>
        <th scope="col">Operations</th>

    </tr>
    </thead>
    <tbody>

    <c:forEach var="list" items="${lists}" >
        <tr>
            <td>${list.servicename}</td>

            <td>

                <a href="/edit_service/${list.serviceid}" class="btn btn-success">
                    <i class="fa fa-pencil"></i> Edit Service</a>
                <a href="/delete_service/${list.serviceid}" class="btn btn-danger">
                    <i class="fa fa-trash-o"></i> Delete Service</a>
            </td>

        </tr>
    </c:forEach>
    </tbody>
</table>



</div>
</div>
<%@ include file="footer.jsp" %>

