
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="margin-top:100px;" align="center" id="profile-container">
	<div id="pic">
	
	</div>
	<div  id="info">
	
		<%
			String [] data = new String[8];
			com.haphor.database.LoginDAO dao = new com.haphor.database.LoginDAO();
			data = dao.viewProfile(request.getSession().getAttribute("LogId").toString(), "select * from USER where userid=?");  
			//out.print("<h3>"+ data[0]+" "+ data[1]+" "+ data[2]+" "+ data[3]+"</h3>");
		%>
		
			
	</div>
</div>

<style>
.user-row {
    margin-bottom: 14px;
}

.user-row:last-child {
    margin-bottom: 0;
}

.dropdown-user {
    margin: 13px 0;
    padding: 5px;
    height: 100%;
}

.dropdown-user:hover {
    cursor: pointer;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
.toppad{

margin-top:20px;
}



</style>

<div style="background-color:#eee; width:700px;"class="container">
      <div class="row">
      
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading">
              <h2 class="panel-title"><%out.print(data[1]+" "+data[2]); %></h2>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>User Name:</td>
                        <td><%out.print(data[0]); %></td>
                      </tr>
                      <tr>
                        <td>Email Address: </td>
                        <td><a href="mailto:info@support.com"><%out.print(data[3]); %></a></td>
                      </tr>
                      <tr>
                        <td>Country: </td>
                        <td><%out.print(data[5]); %></td>
                      </tr>
                       <tr>
                        <td>Gender</td>
                        <td><%out.print(data[6]); %></td>
                      </tr>
                       <tr>
                        <td>Age</td>
                        <td><%out.print(data[7]); %></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           <A href="editProfile.jsp" >Edit Profile</A>
           <A href="../LogoutServ" >Sign Out</A>
       	<br>
		<p class=" text-info">May 05,2014,03:00 pm </p>
		  <div style=" max-width:200px; max-height: 200px;"class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> 
          </div>
      </div>
      </div>
</div>
    
    
    
    