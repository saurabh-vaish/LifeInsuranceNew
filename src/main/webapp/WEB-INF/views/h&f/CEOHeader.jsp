<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>CEO</title>
  <!-- Font Awesome -->
  <%-- <link rel="stylesheet" href="<c:url value='/resources/css/font-awesome.min.css'/>">
   --%>
  	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
  
  <!-- Bootstrap core CSS -->
  <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="<c:url value='/resources/css/mdb.adv.css'/>" rel="stylesheet">
   <!-- font-awesome -->
  <link href="<c:url value='/resources/css/font.css'/>" rel="stylesheet">
  
  <!-- Your custom styles (optional) -->
  <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
</head>

<body class="fixed-sn white-skin">



<!--  getting id from session and setting to id -->

<c:set var="id" value="${userId}"/>

  <!--Double navigation-->
  <header>
    <!-- Sidebar navigation -->
    <div id="slide-out" class="side-nav sn-bg-4 fixed">
      <ul class="custom-scrollbar">
        <!-- Logo -->
        <li>
          <div class="logo-wrapper waves-light">
            <a href="#"><img src="https://mdbootstrap.com/img/logo/mdb-transparent.png" class="img-fluid flex-center"></a>
          </div>
        </li>
        <!--/. Logo -->
        <!--Social-->
        <li>
          <ul class="social">
            <li><a href="#" class="icons-sm fb-ic"><i class="fab fa-facebook"> </i></a></li>
            <li><a href="#" class="icons-sm pin-ic"><i class="fab fa-pinterest"> </i></a></li>
            <li><a href="#" class="icons-sm gplus-ic"><i class="fab fa-google-plus"> </i></a></li>
            <li><a href="#" class="icons-sm tw-ic"><i class="fab fa-twitter"> </i></a></li>
          </ul>
        </li>
        <!--/Social-->
        <!--Search Form-->
        <li>
          <form class="search-form" role="search">
            <div class="form-group md-form mt-0 pt-1 waves-light">
              <input type="text" class="form-control" placeholder="Search">
            </div>
          </form>
        </li>
        <!--/.Search Form-->
        <!-- Side navigation links -->
        <li>
          <ul class="collapsible collapsible-accordion">
            <li><a class="collapsible-header waves-effect arrow-r"><i class="fas fa-chevron-right"></i> Submit
                blog<i class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="#" class="waves-effect">Submit listing</a>
                  </li>
                  <li><a href="#" class="waves-effect">Registration form</a>
                  </li>
                </ul>
              </div>
            </li>
            <li><a class="collapsible-header waves-effect arrow-r"><i class="far fa-hand-pointer"></i>
                Instruction<i class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="#" class="waves-effect">For bloggers</a>
                  </li>
                  <li><a href="#" class="waves-effect">For authors</a>
                  </li>
                </ul>
              </div>
            </li>
            <li><a class="collapsible-header waves-effect arrow-r"><i class="far fa-eye"></i> About<i class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="#" class="waves-effect">Introduction</a>
                  </li>
                  <li><a href="#" class="waves-effect">Monthly meetings</a>
                  </li>
                </ul>
              </div>
            </li>
            <li><a class="collapsible-header waves-effect arrow-r"><i class="far fa-envelope"></i> Contact me<i
                  class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="#" class="waves-effect">FAQ</a>
                  </li>
                  <li><a href="#" class="waves-effect">Write a message</a>
                  </li>
                  <li><a href="#" class="waves-effect">FAQ</a>
                  </li>
                  <li><a href="#" class="waves-effect">Write a message</a>
                  </li>
                  <li><a href="#" class="waves-effect">FAQ</a>
                  </li>
                  <li><a href="#" class="waves-effect">Write a message</a>
                  </li>
                  <li><a href="#" class="waves-effect">FAQ</a>
                  </li>
                  <li><a href="#" class="waves-effect">Write a message</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </li>
        <!--/. Side navigation links -->
      </ul>
      <div class="sidenav-bg mask-strong"></div>
    </div>
    <!--/. Sidebar navigation -->
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg double-nav scrolling-navbar" style="background: linear-gradient(40deg,#ff6ec4,#7873f5) !important">
      <!-- SideNav slide-out button -->
      <div class="float-left">
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
      </div>
      <!-- Breadcrumb-->
      
      <ul class="nav navbar-nav nav-flex-icons ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="home">Home 
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="profile?id=${id}">Profile</a>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">Branch
          </a>
          <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
          	<a class="dropdown-item" href="regBranch">Register</a>
            <a class="dropdown-item" href="allBranch">View All</a>
          </div>
       </li> 
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">Branch Managers
          </a>
          <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
          	<a class="dropdown-item" href="regManager">Register</a>
            <a class="dropdown-item" href="allManager">View All</a>
          </div>
       </li> 
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">Policies
          </a>
          <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
          	<a class="dropdown-item" href="regPolicy">Register</a>
            <a class="dropdown-item" href="allPolicies">View All</a>
          </div>
       </li> 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">Reports
          </a>
          <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
          	<a class="dropdown-item" href="regBranch">Agents</a>
            <a class="dropdown-item" href="allBranch">Customers</a>
          </div>
       </li> 
        
        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">Reports
          </a>
          <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
            <a class="dropdown-item" href="#">Policy Details</a>
            <a class="dropdown-item" href="#">A</a>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li> -->
        <li class="nav-item">
          <a class="nav-link waves-effect waves-light">1
            <i class="fas fa-envelope"></i>
          </a>
        </li>
        <li class="nav-item avatar dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-2.jpg" class="rounded-circle z-depth-0" alt="avatar image">
          </a>
          <div class="dropdown-menu dropdown-menu-right dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-55">
          <a class="dropdown-item" >Hello  </a>
            <a class="dropdown-item" href="profile?cid=">Profile</a>
            <hr>
            <a class="dropdown-item" href="#">Logout </a>
          </div>
        </li>
      </ul>
     
      
    </nav>
    <!-- /.Navbar -->


  </header>
  <!--/.Double navigation-->

 
