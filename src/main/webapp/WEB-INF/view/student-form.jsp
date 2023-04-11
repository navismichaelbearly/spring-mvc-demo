<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Student Registration Form</title>
</head>

<body>
<!-- 

	During Loading
		1. getFirstName
		2. getLastName
		
	During submit
		1. setFirstName
		2. setLastName
		
 -->
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		
		<br><br>
		
		Last name: <form:input path="lastName"/>
		
		<br><br>
		
		Country:
		
		<form:select path="country">
			
			<form:options items="${theCountryOptions}"/>
			
			<!--<form:options items="${student.countryOptions }"/>-->
			
			<!--
			this will load student.getCountryOptions 
			 -->
			
			<!--
			<form:option value="Brazil" label="Brazil"></form:option>
			<form:option value="France" label="France"></form:option>
			<form:option value="Germany" label="Germany"></form:option>
			<form:option value="India" label="India"></form:option>
			-->
		</form:select>
		
		<br/>
		<br/>
		
		Favorite Language:
		
		<!-- 
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		c# <form:radiobutton path="favoriteLanguage" value="C#" />
		PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		 -->
		 
		<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"/>
		<!--  this will call student.getFavoriteLanguageOptions -->
		
		<br/>
		<br/>
		
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>
		
		<!--  on submit it will call student.setOperationgSystms -->
		
		<!--  on submit spring will call student.setFavoriteLanguage(..) -->
		<br/>
		<br/>
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>
