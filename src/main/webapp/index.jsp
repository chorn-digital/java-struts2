<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Struts Application</title>
    <!-- Include Bulma CSS from a CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="assets/css/custom.css">
</head>
<body>
<section class="section">
    <div class="container">
        <h1 class="title">Welcome to Java Struts Application</h1>
        <div class="box">
            <s:form action="hello">
                <div class="field">
                    <s:textfield name="name" label="Name" cssClass="input"/>
                </div>
                <div class="control">
                    <s:submit value="Say Hello" cssClass="button is-link"/>
                </div>
            </s:form>
        </div>
    </div>
</section>
</body>
</html>
