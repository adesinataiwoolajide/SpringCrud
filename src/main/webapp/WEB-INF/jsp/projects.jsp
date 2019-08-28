<%@ include file="header.jsp" %>

        <form action="/saveprojects" method="POST">
            <div class="row">
                <div class="form-group row col-md-12">
                    <div class="col-sm-4">

                        <input type="text" required class="form-control"
                               name="project_name" placeholder="Enter The Project Name">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">

                        <select class="form-control select" required name="project_category">
                            <option value="">-- Select The Project Categor --</option>

                            <option value=""></option>
                            <c:forEach var="category" items="${listing}" >
                                <option value="${category.id}">${category.categoryname}</option>
                            </c:forEach>
<%--                            <option value="1">Andriod App</option>--%>
<%--                            <option value="2">Andriod and IOS App</option>--%>

                        </select>

                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">

                        <input type="text" required class="form-control"
                               name="project_description" placeholder="Enter The Project Description">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Add Project</button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
        <table class="table table-bordered">
            <thead class="">
            <tr>
                <th scope="col">S/N</th>
                <th scope="col">Project Name</th>
                <th scope="col">Project Category</th>
                <th scope="col">Project Description</th>
                <th scope="col">Operations</th>

            </tr>
            </thead>
            <tbody>

            <c:forEach var="list" items="${lists}" >
                <tr>
                    <th scope="row">${list.id}</th>
                    <td>${list.projectname}</td>
                    <td>${list.categories.categoryname}</td>
                    <td>${list.projectdescription}</td>


                    <td>

                        <a href="/edit_project/${list.id}" class="btn btn-success">
                            <i class="fa fa-pencil"></i> Edit Project</a>
                        <a href="/delete_project/${list.id}" class="btn btn-danger">
                            <i class="fa fa-trash-o"></i> Delete Project</a>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>



    </div>
</div>
<%@ include file="footer.jsp" %>

