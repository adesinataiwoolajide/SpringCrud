<%@ include file="header.jsp" %>


        <form action="/update_staff" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="form-group row col-md-12">

                    <div class="col-sm-3">

                        <input type="text" required class="form-control"
                               name="staff_name" placeholder="Enter The Staff Name"
                               value="${lists.staffname}">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-3">

                        <input type="number" required class="form-control"
                               name="phone_number"" value="${lists.phonenumber}"
                        placeholder="Enter The Staff Phone">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-3">

                        <input type="email" required class="form-control"
                               name="email" value="${lists.email}" placeholder="Enter The Staff E-mail">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <div class="col-sm-3">

                        <select class="form-control select" required name="staff_type">
                            <option value="${lists.stafftype}">${lists.stafftype}</option>

                            <option value=""></option>
                            <option value="Consultant">Consultant</option>
                            <option value="Programmer">Programmer</option>
                            <option value="Software Engineer">Software Engineer</option>

                        </select>

                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <input type="hidden" name="id" value="${lists.id}">

                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Update Staff</button>
                    </div>
                </div>
            </div>
        </form>


    </div>
</div>

<%@ include file="footer.jsp" %>
