<%@ include file="header.jsp" %>

<form action="/update" method="POST">

            <div class="form-group">
                <label>First Name</label>
                <input type="text" required class="form-control" value="${lists.firstName}" name="firstname"  placeholder="Enter Your First Name">
                <span style="color: red;">This Field is Required.</span>
            </div>
            <div class="form-group">
                <label>Last Name</label>
                <input type="text" required class="form-control" value="${lists.lastName}" name="lastname" placeholder="Enter Your Last Name">
                <span style="color: red;">This Field is Required.</span>
            </div>

            <button type="submit" class="btn btn-primary">Update ${lists.firstName} Details</button>
        </form>

        <a href="/view/${lists.id}" class="btn btn-danger"> <i class="fa fa-list"></i> View </a>
    </div>
</div>
<%@ include file="footer.jsp" %>

