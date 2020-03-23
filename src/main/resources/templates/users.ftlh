<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <table>
        <tr>
            <th>Имя</th>
            <th>email</th>
        </tr>
        <#list users as user>
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td><a href="/user/${user.id}">Посмотреть</a></td>
        </tr>
        </#list>
    </table>

</div>
</body>
</html>