@extends ('layout.layout')

@section('content')
<div class="row">
	<div class="col-sm-12">
		<div class="mr20">
			<a href="{{ route('product.index') }}" class="btn btn-info float-right mrb20">Back to home</a>
		</div>
		<table class="table table-bordered table-striped alert-info mr20">
			<thead class="alert-danger">	
				<tr>
					<th>#</th>
					<th class="width15">Product Name :</th>
					<th>{{ $product->product_name }}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>#</td>
					<th>Product Details :</th>
					<td>{{ $product->product_details }}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
@endsection