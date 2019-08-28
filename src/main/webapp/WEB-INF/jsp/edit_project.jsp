<%@ include file="header.jsp" %>


<form action="/updateprojects" method="POST">
            <div class="row">
                <div class="form-group row col-md-12">
                    <div class="col-sm-4">

                        <input type="text" required class="form-control"
                               name="project_name" placeholder="Enter The Project Name"
                               value="${lists.projectname}">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">
                        <select class="form-control select" required name="project_category">
                            <option value="${lists.projectcategory}">${lists.projectcategory}</option>

                            <option value=""></option>
                            <option value="Andriod App">Andriod App</option>
                            <option value="Andriod and IOS App">Andriod and IOS App</option>
                            <option value="Andriod, Desktop and IOS App">Andriod, Desktop and IOS App</option>
                            <option value="Andriod, IOS and Web App">Andriod, IOS and Web App</option>
                            <option value="Desktop App"> Desktop App</option>
                            <option value="Andriod and Mobile App">Andriod and Desktop App</option>
                            <option value="Andriod, Desktop and Web App">Andriod, Desktop and Web App</option>
                            <option value="Andriod, Desktop,IOS and Web App">Andriod, Mobile, IOS and Web App</option>
                            <option value="Web App">Web App</option>
                            <option value="IOS App">IOS App</option>


                        </select>
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">

                        <input type="text" required class="form-control"
                               name="project_description" placeholder="Enter The Project Description"
                               value="${lists.projectdescription}">
                        <span style="color: red;">This Field is Required.</span>
                    </div>
                    <input type="hidden" name="id" value="${lists.id}">

                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-danger btn-lg btn-block">Update Project</button>
                    </div>
                </div>
            </div>
        </form>
        <hr>

    </div>
</div>

<%@ include file="footer.jsp" %>

