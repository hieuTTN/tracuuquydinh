
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


var size = 9;
async function loadQuyDinh(page) {
    var payload = {
        "categoryIds":$("#listdanhmuc").val(),
        "departmentIds":[$("#listkhoa").val()],
    }
    console.log(payload)
    const response = await fetch('/api/student/search-full-quydinh?page=' + page + '&size=' + size, {
        method: 'POST',
        headers: new Headers({
            'Content-Type': 'application/json'
        }),
        body: JSON.stringify(payload)
    });
    var result = await response.json();
    console.log(result)
    var list = result.content;
    var totalPage = result.totalPages;

    var main = '';
    for (i = 0; i < list.length; i++) {
        var dm = '<div class="listdanhmucquydinh">'
        for (j = 0; j < list[i].regulationCategories.length; j++) {
            dm += `<span class="danhmucquydinh">${list[i].regulationCategories[j].category.name}</span>`
        }
        dm +='</div>'
        main += `<div class="col-sm-4">
                    <div onclick="findById(${list[i].id})" data-bs-toggle="modal" data-bs-target="#themdanhmuc" class="singlequydinh">
                        <img src="${list[i].image}" class="imgquydinhstudent">
                        <div class="noidungquydinh">
                            <i class="fa fa-calendar iconlich"></i> ${formatLocalDateTime(list[i].createdDate)}<br>
                            <i class="fa fa-map-marker iconlich"></i> ${list[i].department.name}
                            ${dm}
                            <p class="tieudequydinh">${list[i].name}</p>
                        </div>
                    </div>
                </div>`
    }
    document.getElementById("listquydinh").innerHTML = main

    var mainpage = ''
    for (i = 1; i <= totalPage; i++) {
        mainpage += `<li onclick="loadQuyDinh(${(Number(i) - 1)})" class="page-item"><a class="page-link" href="#">${i}</a></li>`
    }
    document.getElementById("pageable").innerHTML = mainpage
}


async function findById(id) {
    const response = await fetch('/api/public/find-quydinh-by-id?id=' + id, {
    });
    var result = await response.json();
    document.getElementById("noidungquydinh").innerHTML = result.content
    if(result.linkFile != null){
        document.getElementById("linktaifile").innerHTML = "Tải file"
        document.getElementById("linktaifile").href = result.linkFile
        document.getElementById("linktaifile").classList.add('btn')
        document.getElementById("linktaifile").classList.add('btn-primary')
    }
}



function formatLocalDateTime(dateTimeString) {
    // Chuyển chuỗi thành đối tượng Date
    if(dateTimeString == null){
        return '';
    }
    const date = new Date(dateTimeString);

    // Lấy các thành phần ngày, tháng, năm, giờ và phút
    const day = String(date.getDate()).padStart(2, '0'); // Định dạng 2 chữ số
    const month = String(date.getMonth() + 1).padStart(2, '0'); // Tháng bắt đầu từ 0
    const year = date.getFullYear();
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');

    // Trả về chuỗi định dạng dd/MM/YYYY hh:mm
    return `${day}/${month}/${year} ${hours}:${minutes}`;
}