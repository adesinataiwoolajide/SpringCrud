<%@ include file="header.jsp" %>

<form action="/savepartner" method="POST" enctype="multipart/form-data">
    <div class="row">
        <div class="form-group row col-md-12">
            <div class="col-sm-4">
                <input type="file" required class="form-control"
                       name="partnerlogo">
            </div>


            <div class="col-sm-4">
                <input type="text" required class="form-control"
                       name="partnername" placeholder="Enter The Partner Name">
            </div>
            <div class="col-sm-4">
                <button type="submit" class="btn btn-danger btn-lg btn-block">Add Partner</button>
            </div>
        </div>
    </div>
</form>
<hr>
<table class="table table-bordered">
    <thead class="">
    <tr>

        <th scope="col">Partner Logo</th>
        <th scope="col">Partner Name</th>
        <th scope="col">Operations</th>

    </tr>
    </thead>
    <tbody>

    <c:forEach var="list" items="${lists}" >
        <tr>
            <td>${list.partnerlogo}</td>
            <td>${list.partnername}</td>

            <td>

                <a href="/edit_partner/${list.partnerid}" class="btn btn-success">
                    <i class="fa fa-pencil"></i> Edit Partner</a>
                <a href="/delete_partner/${list.partnerid}" class="btn btn-danger">
                    <i class="fa fa-trash-o"></i> Delete Partner</a>
            </td>

        </tr>
    </c:forEach>
    </tbody>
</table>



</div>
</div>
<%@ include file="footer.jsp" %>

