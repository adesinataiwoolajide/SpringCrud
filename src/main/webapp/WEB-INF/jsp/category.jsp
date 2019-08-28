<%@ include file="header.jsp" %>


        <form action="/savecategories" method="POST">
            <div class="row">
                <div class="form-group row col-md-12">
                    <div class="col-sm-4">

                        <input type="text" required class="form-control"
                               name="categoryname" placeholder="Enter The Category Name">
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">

                        <select class="form-control select" required name="category_language">
                            <option value="">-- Select The Project Language --</option>

                            <option value=""></option>
                            <option value="PHP">PHP</option>
                            <option value="JAVA">Java</option>
                            <option value="LARAVEL">Laravel</option>
                            <option value="SPRING MVC">Spring MVC</option>

                        </select>
                        <span style="color: red;">This Field is Required.</span>
                    </div>

                    <div class="col-sm-4">
                        <button type="submit" class="btn btn-danger  btn-lg btn-block">Add Category</button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
        <table class="table table-bordered">
            <thead class="">
            <tr>

                <th scope="col">Category Name</th>
                <th scope="col">Language Name</th>
                <th scope="col">Operations</th>

            </tr>
            </thead>
            <tbody>

            <c:forEach var="list" items="${lists}" >
                <tr>

                    <td>${list.categoryname}</td>
                    <td>${list.categoryLanguage.categorylanguage}</td>
                    <td>

                        <a href="/edit_category/${list.id}" class="btn btn-success"> <i class="fa fa-pencil"></i> Edit Category</a>
                        <a href="/delete_category/${list.id}" class="btn btn-danger"> <i class="fa fa-trash-o"></i> Delete Categpry</a>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>



    </div>
</div>


</body>
</html>

