<!DOCTYPE html>
<html lang="en">
<head>
  <title>My Crud</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  	.form1{background: #eee;padding: 20px 30px;border: 2px solid #c1d1ef;border-radius: 5px;box-shadow: 0px 0px 3px 2px #c1d1ef;}
  	.is-invalid{border: 2px solid #f30d37;border-radius: 5px;box-shadow: 0px 0px 3px 2px #f30d37;}
  	.float-right{float: right;}
  	.width10{ width: 10%; }
  	.mr20{ margin: 20px 0; }
  	.mrb20{ margin-bottom: 20px; }
    .width15{ width: 15%; }
  </style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="javascript:;">@SATIRTHA</a>
    </div>
    <ul class="nav navbar-nav">
    	<!-- @if(request()->segment(count(request()->segments())) == 'create')@endif --> 
      <li class="@if(request()->segment(count(request()->segments())) == 'product') active @endif"><a href="{{ route('product.index') }}">Home</a></li>
      <li class="@if(request()->segment(count(request()->segments())) == 'create') active @endif"><a href="{{ route('product.create') }}">Add Product <!-- {{ url()->current() }} {{ request()->segment(count(request()->segments())) }} --></a></li>
    </ul>
  </div>
</nav>
<div class="container">
  @yield('content')
</div>
<script>
	jQuery(function(){jQuery('.alert').fadeIn().delay(3000).fadeOut('slow');})
</script>
</body>
</html>