<%@ include file="header.jsp" %>

    <table class="table table-bordered">

        <tbody>

            <tr>
                <th>ID </th>
                <th scope="row">${lists.id}</th>
            </tr>
            <tr>
                <th>First Name</th>
                <td>${lists.firstName}</td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td>${lists.lastName}</td>

            </tr>

        </tbody>
    </table>

        <a href="/" class="btn btn-primary">Go Back</a>
        <a href="/edit/${lists.id}" class="btn btn-success">
            <i class="fa fa-pencil"></i> Edit </a>
    </div>



</div>

<%@ include file="footer.jsp" %>

