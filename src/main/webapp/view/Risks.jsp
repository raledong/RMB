<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"></meta>
<title>风险管理</title>
 
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">


<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="/RMP/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- DataTables -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/RMP/bootstrap/AdminLTE-2.3.7/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>



 
  
  
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="#" class="navbar-brand"><b>RiskManage</b></a>
        </div>

        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs">Alexander Pierce</span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="" class="img-circle" alt="User Image">

                  <p>
                    Alexander Pierce - Web Developer
                    <small>Member since Nov. 2012</small>
                  </p>
                </li>
                
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-right">
                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
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
      				<li><a href="#"><i class="fa fa-dashboard"></i> 项目</a></li>
      				<li class="active"> 项目风险</li>
      			</ol>
      		</small>
      	</h1>
      </section>

      <!-- Main content -->
      <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">项目rmp的风险项</h3>
              <a href="/RMP/webpage/addRisk" class="pull-right"><span class="glyphicon glyphicon-plus"></span></a>
            </div>
            <!-- /.box-header -->
            
            <div class="box-body">
            <input type="hidden" id=""/>
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
                  <th>状态跟踪</th>
                  <th>跟踪者</th>
                  <th>Modify</th>
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
                		<td><a href="/RMP/view/statusTracking">状态跟踪</a></td>
                		<td><s:property value="followedBy"/></td>
                		<td>
                			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#${id }"><span class="glyphicon glyphicon-edit"></span></button>
                			<div class="modal fade" id="${id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                				<div class="modal-dialog" role="document">
                					<div class="modal-content">
                						<div class="modal-header">
                							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                							<h4 class="modal-title" id="myModalLabel">risk详情</h4>
                						</div>
                						
                						<div class="modal-body">
                							<div class="panel panel-blue" style="background:#fff;">
                								<%-- <div class="panel-heading">risk编号：${id}</div> --%>
                								<div class="panel-body">
                									<s:form action="／RMP/webpage/modRisk" method="post" theme="simple">
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk编号:"/>
                											<div class="col-md-9">
                											<%-- <input id="riskId" name="riskId" type="text" class="form-control" value="${id}" placeholder="${id}"/> --%>
                											<%-- <p class="form-control-static" id="riskId" name="riskId">${id}</p> --%>
                											<input class="form-control" id="riskId" name="riskId" type="text" value="${id}" readonly>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk内容:"/>
                											<div class="col-md-9">
                											<input id="riskInfo" name="riskInfo" type="text" class="form-control" value="${info}"/>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk可能性:"/>
                											<div class="col-md-9">
                											<input id="riskProbability" name="riskProbability" type="text" class="form-control" value="${probability}" placeholder=""/>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk影响程度:"/>
                											<div class="col-md-9">
                											<input id="riskImpact" name="riskImpact" type="text" class="form-control" value="${impact}" placeholder=""/>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk触发器:"/>
                											<div class="col-md-9">
                											<input id="riskTrigger" name="riskTrigger" type="text" class="form-control" value="${trigger}" placeholder=""/>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk创建时间:"/>
                											<div class="col-md-9">
                											<input class="form-control" id="riskCreatedAt" name="riskCreatedAt" type="text" value="${createdAt}" readonly>
                											<%-- <p class="form-control-static" id="riskCreatedAt" name="riskCreatedAt">${createdAt}</p> --%>
                											<%-- <input id="riskCreatedAt" name="riskCreatedAt" type="text" class="form-control" value="${createdAt}" placeholder=""/> --%>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk创建者:"/>
                											<div class="col-md-9">
                											<input class="form-control" id="riskCreatedBy" name="riskCreatedBy" type="text" value="${createdBy}" readonly>
                											<%-- <p class="form-control-static" id="riskCreatedBy" name="riskCreatedBy">${createdBy}</p> --%>
                											<%-- <input id="riskCreatedBy" name="riskCreatedBy" type="text" class="form-control" value="${createdBy}" placeholder=""/> --%>
                											</div>
                										</div>
                										<div class="row form-group col-md-12">
                											<s:label class="control-label col-md-3" value="risk跟踪者:"/>
                											<div class="col-md-9">
                											<input class="form-control" id="riskFollowedBy" name="riskFollowedBy" type="text" value="${followedBy}" readonly>
                											<%-- <p class="form-control-static" id="riskFollowedBy" name="riskFollowedBy">${followedBy}</p> --%>
                											<%-- <input id="riskFollowedBy" name="riskFollowedBy" type="text" class="form-control" value="${followedBy}" placeholder=""/> --%>
                											</div>
                										</div>
                										
                										
                										
                										<s:submit class="btn btn-primary pull-right col-md-2 row " value="mod"/>
                									</s:form>
                								</div>
                							</div>
                						</div><!-- /.modal-body -->
                					</div><!-- /.modal-content -->
                				</div>
                				<!-- /.modal-dialog -->
                			</div>
                		</td>
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

