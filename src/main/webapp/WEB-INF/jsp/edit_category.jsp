<%@ include file="header.jsp" %>


<form action="/updatecategories" method="POST">
            <div class="row">
                <div class="form-group row col-md-12">
                    <div class="col-sm-6">

                        <input type="text" required class="form-control"
                               name="categoryname" placeholder="Enter The Category Name" value="${lists.categoryname}">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <input type="hidden" value="${lists.id}" name="id">

                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Update Category</button>
                    </div>
                </div>
            </div>
        </form>
        <hr>

    </div>
</div>
<%@ include file="footer.jsp" %>

