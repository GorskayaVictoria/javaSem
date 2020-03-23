<#include 'base.ftlh'/>

<#macro content>

<div class="registration_window">
    <form method="POST" enctype="multipart/form-data" novalidate>
        <div>
            <div class="form_row">
                <div class="form_field2">
                    <label for="name">Name<br></label>
                    <input class="field" type="text" name="name" >
                </div>
                <div class="form_field2">
                    <label for="email">city<br></label>
                    <input class="field" type="text" name="city"  >
                </div>
            </div>

            <div class="form_row">
                <div class="form_field2">
                    <label for="txtNewPassword">info<br></label>
                    <input class="field" type="text" name="info"  >
                </div>
                <div class="form_field2">
                    <label for="txtConfirmPassword"> year<br></label>
                    <input class="field" type="number" name="year" >
                </div>
            </div>

            <div class="form_row">
                <div>
                    <input type="file" id="file" name="file" placeholder="Имя файла..."/>

                    <input type="hidden" id="file_hidden">
                    <div class="filename"></div>
                </div>

            </div>

            <div>
                <button onclick="sendFile()" type="submit" class="btn btn-secondary submit_button">Submit</button>
            </div>
        </div>
    </form>
</div>


<script src="/js/jquery.js"></script>
<script>
    function sendFile() {
        // данные для отправки
        let formData = new FormData();
        // забрал файл из input
        let files = ($('#file'))[0]['files'];
        // добавляю файл в formData
        [].forEach.call(files, function (file, i, files) {
            formData.append("file", file);
        });

        $.ajax({
            type: "POST",
            url: "/newTrans",
            data: formData,
            processData: false,
            contentType: false
        })

    }
</script>


</#macro>
<@main/>
