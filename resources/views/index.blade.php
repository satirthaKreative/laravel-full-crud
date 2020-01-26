@extends ('layout.layout')

@section('content')
<div class="row">
	<div class="col-sm-12">
		<div class="mr20">
			<a href="{{ route('product.create') }}" class="btn btn-info float-right mrb20">Add Product</a>
		</div>
		@if($message = Session::get('success'))
		<div class="alert alert-success">
			<strong>{{ $message }}</strong>
		</div>
		@endif
		<table class="table table-bordered table-striped alert-info mr20">
			<thead class="alert-danger">	
				<tr>
					<th>#</th>
					<th class="width10">Product Name</th>
					<th>Product Details</th>
					<th>Delete</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@foreach($products as $product)
				<tr>
					<td>{{ ++$i }}</td>
					<td>{{ $product->product_name }}</td>
					<td>{{ $product->product_details }}</td>
					<td>
						<form method="POST" action="{{ route('product.destroy',$product->id) }}">
							@csrf
							@method('DELETE')
							<button class="btn btn-danger" type="submit">DELETE</button>
						</form>
					</td>
					<td>
						<a href="{{ route('product.edit',$product->id) }}" class="btn btn-info mrb20" >EDIT DETAILS</a>
						<a href="{{ route('product.show',$product->id) }}" class="btn btn-primary">SHOW PRODUCT</a> </td>
				</tr>
				@endforeach
			</tbody>
		</table>
		{{ $products->links() }}
	</div>
</div>
@endsection