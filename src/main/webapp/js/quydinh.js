
var linkImage = ''
var linkFile = ''
async function saveQuyDinh() {
    document.getElementById("loading").style.display = 'block'
    var uls = new URL(document.URL)
    var id = uls.searchParams.get("id");

    const formData = new FormData()
    formData.append("file", document.getElementById('fileimage').files[0])
    const res = await fetch('/api/public/upload-file', {
        method: 'POST', body: formData
    });
    if (res.status < 300) {
        linkImage = await res.text();
    }
    const formFile = new FormData()
    formFile.append("file", document.getElementById('filedinhkem').files[0])
    const resp = await fetch('/api/public/upload-file', {
        method: 'POST', body: formFile
    });
    if (resp.status < 300) {
        linkFile = await resp.text();
    }
    var payload = {
        "regulation":{
            "id": id,
            "name": document.getElementById("name").value,
            "department": {"id":document.getElementById("khoa").value},
            "content": tinyMCE.get('editor').getContent(),
            "image": linkImage,
            "linkFile": linkFile,
        },
        "categoryId":$("#listdanhmuc").val()
    }

    const response = await fetch('/api/admin/create-quydinh', {
        method: 'POST',
        headers: new Headers({
            'Content-Type': 'application/json'
        }),
        body: JSON.stringify(payload)
    });
    if (response.status < 300) {
        swal({
                title: "Thông báo",
                text: "thêm/sửa quy định thành công!",
                type: "success"
            },
            function() {
                window.location.replace('quydinh')
            });
    }
    else{
        toastr.warning("Hành động thất bại");
    }
    document.getElementById("loading").style.display = 'none'
}


async function loadAQuyDinh() {
    var id = window.location.search.split('=')[1];
    if (id != null) {
        const response = await fetch('/api/public/find-quydinh-by-id?id=' + id, {
        });
        var result = await response.json();
        document.getElementById("khoa").value = result.department.id
        linkFile = result.linkFile
        linkImage = result.image
        var arr = [];
        result.regulationCategories.forEach((p)=>{
            arr.push(p.category.id)
        })
        $("#listdanhmuc").val(arr).change();;
    }
}