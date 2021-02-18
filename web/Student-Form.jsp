

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style>
            div{
                border: 2px solid black;
                width:300px;height: 250px;
                margin-left: 100px; 
                padding:10px 60px 20px 30px;
            } 
            h1{
                font-size: 15px;
                text-align: center
            }
            sub{
                background-color: white;
                color: green;
                border: 2px solid #555555;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Student Information Form</h1>
            <form action="getStudent" method="POST">
                <table>
                    <tbody>
                        <tr>

                            <td>ID</td>
                            <td><input type="text" name="id" value="22052" required="" /></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="N" value="Mazina" required=""</td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td><select name="G">
                                    <option>MALE</option>
                                    <option>FEMALE</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Date</td>
                            <td><input type="date" name="D" value="1998-08-08" required=""</td>

                        </tr>
                        <tr>
                        <tr>
                            <td><input type="submit" value="Next" /></td>
                        </tr>
                    </tbody>
                </table>
        </div>
    </form>
</body>
</html>