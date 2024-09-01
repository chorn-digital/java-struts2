<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <!-- Include Bulma CSS from a CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
</head>
<body>
<section class="section">
    <div class="container">
        <div class="notification is-success">
            <h1 class="title">Hello, <s:property value="name"/>!</h1>
            <p>You have successfully submitted your name.</p>
            <p>The current date and time is: <s:property value="datetime"/></p>
        </div>
        <div class="buttons">
            <a href="index.jsp" class="button is-link">Back to Home</a>
        </div>
    </div>
</section>
</body>
</html>
