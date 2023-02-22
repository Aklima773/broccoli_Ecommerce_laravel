<table class="center">
                <tr>
                    <th>Catagory Name</th>

                </tr>


                <tr>

                    <td>
                        <select>

                        <option value="" selected >Select One</option>
                        @foreach($catagory as $catagory)
                        <option>{{$catagory->name}}</option>
                        @endforeach
                    </select>
                </td>

                </tr>


            </table>
