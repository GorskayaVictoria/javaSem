<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <title>Document</title>
</head>
<body>

<div class="content">
    <p><input id="name" oninput="f()"/></p>
    <div class="result" id ="res">
    </div>
    <hr>


    <div class="all_results">

        <div class="result" id ="res">

        </div>

        <!--<a href="#"><h5>Result</h5></a>-->
    </div>
</div>
<script type="application/javascript">

    function f() {
        $("#res").html($("#name").val());
        if ($("#name").val().length >= 1) {
            $.ajax({
                        url: "/search",
                        data: {"name": $("#name").val()},
                        dataType: "json",

                        success: function (msg) {
                            if (msg.objects.length > 0) {
                                $("#res").html("");
                                for (var i = 0; i < msg.objects.length; i++) {
                                    $("#res").append("<li>" + JSON.parse(msg.objects[i]).name + "</li>");
                                }
                            }else{
                                $("#res").html("No results..");
                            }
                        }
                    }
            )}
    }
</script>

</body>
</html>