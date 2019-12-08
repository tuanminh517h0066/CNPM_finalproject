<!DOCTYPE html>
<html>
<head>
	<base href="{{asset('public/layout/frontend')}}/">
	<meta charset="utf-8">
	
					<div id="wrap-inner">
						<div id="khach-hang">
							<h3>Thông tin khách hàng</h3>
							<p>
								<span class="info">Khách hàng: </span>
								{{$info['name']}}
							</p>
							<p>
								<span class="info">Email: </span>
								{{$info['email']}}
							</p>
							<p>
								<span class="info">Điện thoại: </span>
								{{$info['phone']}}
							</p>
							<p>
								<span class="info">Địa chỉ: </span>
								{{$info['add']}}
							</p>
						</div>						
						<div id="hoa-don">
							<h3>Hóa đơn mua hàng</h3>							
							<table class="table-bordered table-responsive">
								<tr class="bold">
									<td width="30%">Tên sản phẩm</td>
									<td width="25%">Giá</td>
									<td width="20%">Số lượng</td>
									<td width="15%">Thành tiền</td>
								</tr>
								@foreach($cart as $item)
								<tr>
									<td>{{$item->name}}</td>
									<td class="price">{{number_format($item->price,0,',','.')}}đ</td>
									<td>{{$item->quantity}}</td>
									<td class="price">{{number_format($item->price*$item->quantity,0,',','.')}}đ </td>
								
								</tr>
								@endforeach
								<tr>
									<td colspan="3">Tổng tiền:</td>
									<td class="total-price">{{$total}} đ</td>
								</tr>
							</table>
						
	<!-- endfooter -->
</body>
</html>