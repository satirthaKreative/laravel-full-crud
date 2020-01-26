@extends('layout.layout')

@section('content')

	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<h2>Product Add </h2>
			<form action="{{ route('product.store') }}" method="POST" class="form1">
			  @csrf
			  @if($message = Session::get('success'))
				<div class="alert alert-success">
					<strong>{{ $message}}</strong>
				</div>
			  @endif
			  <div class="form-group">
			    <label for="product_name">Product Name:</label>
			    <input type="text" class="form-control @error('product_name') is-invalid @enderror" id="product_name" placeholder="Enter product name"  name="product_name" value="{{ old('product_name') }}">
			    @error('product_name')
			        <span class="text-danger mt10" role="alert">
			            <strong>{{ $message }}</strong>
			        </span>
			    @enderror
			  </div>
			  <div class="form-group">
			    <label for="pwd">Product Details:</label>
			    <textarea name="product_details" class="form-control @error('product_details') is-invalid @enderror" placeholder="Enter product details" id="" cols="30" rows="10">{{ old('product_details') }}</textarea>
			    @error('product_details')
			    <span class="text-danger mt10" role="alert">
			    	<strong>{{ $message }}</strong>
			    </span>
			    @enderror
			  </div>
			  <button type="submit" class="btn btn-info">Submit</button>
			  <a href="{{ route('product.index') }}" class="btn btn-danger float-right">Back</a>
			</form>
		</div>
	</div>

@endsection