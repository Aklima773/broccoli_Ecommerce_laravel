
<form action="{{route('orderview')}}" method="get">
    @csrf
<input type="text" name="email">
<input type="submit">
</form>

<div>
@foreach($order as $order)
    <td>{{$order.email}}</td>
    @endforeach
</div>

