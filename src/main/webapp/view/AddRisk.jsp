<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"></meta>
<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"></meta>
<title>风险管理－新增风险</title>
 
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="/RMP/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/dist/css/skins/_all-skins.min.css">


</head>



 
  
  
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
  	<nav class="navbar navbar-static-top">
  		<div class="container">
  			<div class="navbar-header">
  				<a href="#" class="navbar-brand"><b>RiskManageProject</b></a>
  			</div>
  			
  			<!-- Navbar Right Menu -->
  			<div class="navbar-custom-menu">
  				<ul class="nav navbar-nav">
  				<!-- User Account Menu -->
  					<li class="dropdown user user-menu">
  						<!-- Menu Toggle Button -->
  						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
  							<span class="hidden-xs">Manager</span>
  						</a>
  						<ul class="dropdown-menu">
  							<!-- The user image in the menu -->
  							<li class="user-header">
  								<img alt="User Image" src="/RMP/bootstrap/AdminLTE-2.3.7/dist/img/user2-160x160.jpg">
  								<p>Manager - Web Developer
  									<small>Member since Nov. 2012</small>
  								</p>
  							</li>
  							<!-- Menu Footer-->
  							<li class="user-footer">
  								<div class="pull-right">
  									<a href="/RMP/view/Login.jsp" class="btn btn-default btn-flat">Sign out</a>
  								</div>
  							</li>
  						</ul>
  					</li>
  				</ul>
  			</div><!-- /.navbar-custom-menu -->
  		</div><!-- /.container -->
  	</nav>
  </header>
  
  
  
  
  
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">
      	<h1>
      		<small>
      			<ol class="breadcrumb pull-right">
      				<li><a href="/RMP/webpage/showProjects"><i class="fa fa-dashboard"></i> Projects&RA</a></li>
      				<li><a href="/RMP/webpage/manageRisk"> 项目风险</a></li>
      				<li class="active"> 新增项目风险</li>
      			</ol>
      		</small>
      	</h1>
      </section>

      <!-- Main content -->
      <section class="content">
      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">项目${projectId}的风险项</h3>
            </div>
            <!-- /.box-header -->
            
            <div class="box-body">
              <table id="risks" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>编号</th>
                  <th>风险内容</th>
                  <th>可能性</th>
                  <th>影响程度</th>
                  <th>触发器／阈值</th>
                  <th>提交时间</th>
                  <th>提交者</th>
                  <th>状态详情</th>
                  <th>跟踪者</th>
                </tr>
                </thead>
                <tbody>
                <s:iterator value="riskList" id="risk">
                	<tr>
                		<td><s:property value="id"/></td>
                		<td><s:property value="info"/></td>
                		<td><s:property value="probability"/></td>
                		<td><s:property value="impact"/></td>
                		<td><s:property value="trigger"/></td>
                		<td><s:property value="createdAt"/></td>
                		<td><s:property value="createdBy"/></td>
                		<td><a href="/RMP/view/showRiskStatus?riskId=${id}">状态详情</a></td>
                		<td><s:property value="followedBy"/></td>
                	</tr>
                </s:iterator>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        
        <div class="col-xs-4">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">新增风险</h3>
            </div>
            <!-- /.box-header -->
            
            <div class="box-body">
              
              <s:form action="/RMP/webpage/add" method="post" >
              	<div class="form-body pal">
              	  <div class="row">
              	  	<div class="form-group col-md-12">
              	  		<label>风险类型</label>
              	  		<select id="riskTypeId" name="riskTypeId" class="form-control" >
              	  		<s:iterator value="riskTypeList" id="riskType">
              	  		<option value=${riskType.id }>${riskType.info }</option>
              	  		</s:iterator>
              	  		</select>
              	  	</div>
              	  	
              	  	<div class="form-group col-md-12">
              	  		<label>风险内容</label>
              	  	  	<input type="text" id="riskInfo" name="riskInfo" class="form-control"/>
              	  	</div>
              	  	
              	  	<div class="form-group col-md-12">
              	  		<label>可能性</label>
              	  		<select id="riskProbability" name="riskProbability" class="form-control" >
              	  		<option value="low">low</option>
              	  		<option value="medium">medium</option>
              	  		<option value="high">high</option>
              	  		</select>
              	  	</div>
              	  	
              	  	<div class="form-group col-md-12">
              	  		<label>影响程度</label>
              	  		<select id="riskImpact" name="riskImpact" class="form-control" >
              	  		<option value="low">low</option>
              	  		<option value="medium">medium</option>
              	  		<option value="high">high</option>
              	  		</select>
              	  	</div>
              	  	
              	  	<div class="form-group col-md-12">
              	  		<label>触发器／阈值</label>
              	  	  	<input type="text" id="riskTrigger" name="riskTrigger" class="form-control"/>
              	  	</div>
              	  	
              	  	<div class="form-group col-md-12">
              	  		<label>跟踪者</label>
              	  	  	<input type="text" id="riskFollowedBy" name="riskFollowedBy" class="form-control"/>
              	  	</div>
              	  	
              	  </div>
              	 </div>
              	 
              	 
              	 <div class="form-actions text-right pal">
              	 	<s:submit class="btn btn-primary" value="add" theme="simple"/>
              	 </div>
              	 
              </s:form>
              
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/RMP/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/RMP/bootstrap/AdminLTE-2.3.7/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/RMP/bootstrap/AdminLTE-2.3.7/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#risks").DataTable();
  });
</script>
</body>
</html>