<%@ include file="header.jsp" %>

<form action="/updateservices" method="POST">
    <div class="row">
        <div class="form-group row col-md-12">
            <div class="col-sm-6">

                <input type="text" required class="form-control" value="${lists.servicename}"
                       name="servicename" placeholder="Enter The Service Name">

            </div>
            <input type="hidden" name="serviceid" value="${lists.serviceid}">


            <div class="col-sm-6">
                <button type="submit" class="btn btn-danger btn-lg btn-block">Update Service</button>
            </div>
        </div>
    </div>
</form>
<hr>



</div>
</div>
<%@ include file="footer.jsp" %>

