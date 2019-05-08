<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
incomplete
	<form action="branchMod" method="post">
	<pre>
	Branch Code : <input type="text" name="branchId" value="${data.branchId}" readonly="readonly"/>
	Branch Name : <input type="text" name="branchName" value="${data.branchName}" />
	Branch Location : <input type="text" name="branchLocation" value="${data.branchLocation}" />
	Branch date : <input type="text" name="branchDate"  value="${data.branchDate}" />
	Branch Phone : <input type="text" name="branchPhone"  value="${data.branchPhone}" />
	Branch State : <input type="text" name="branchState"  value="${data.branchState}" />
	
	<input type="submit" value="Register"/>
	
	</pre>
	</form>

${msg}

<a href="/LifeInsuranceNew/ceo/reportBranch">Go</a>
</body>
</html>