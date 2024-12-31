
async function loadAllStudentChat() {
    var uls = new URL(document.URL)
    var id = uls.searchParams.get("user");
    var search = document.getElementById("keysearchuser").value
    const response = await fetch('/api/chat/admin/all-student-chat?search='+search, {
    });
    var list = await response.json();
    var main = '';
    for (i = 0; i < list.length; i++) {
        main += `
            <tr onclick="chuyenTrang(${list[i].id})" class="pointer">
                <td><div class="${list[i].id == id?'trhoverchat':''}">
                    ${list[i].fullName} <span class="emailchat">(${list[i].email})</span>
                  <span class="timechat">${formatLocalDateTime(list[i].lastChatTime)}</span>
                </div></td>
            </tr>`
    }
    document.getElementById("listuserchat").innerHTML = main
}


var stompClient = null;


function connect(username) {
    var uls = new URL(document.URL)
    var userid = uls.searchParams.get("user");
    var socket = new SockJS('/hello');
    stompClient = Stomp.over(socket);
    stompClient.connect({ username: username, }, function() {
        console.log('Web Socket is connected');
        stompClient.subscribe('/users/queue/messages', function(message) {
            var Idsender = message.headers.sender
            var mailsender = message.headers.mailsender
            console.log("có tin nhắn đến: "+message)
            if(Idsender == userid){
                appendRecivers(message.body)
            }
            else{
                toastr.success("Có 1 tin nhắn mới từ sinh viên "+mailsender)
            }
        });
    });
}





$( document ).ready(function() {
    var uls = new URL(document.URL)
    var userid = uls.searchParams.get("user");
    $("#sendmess").click(function() {
        stompClient.send("/app/hello/"+userid, {}, $("#contentmess").val());
        append()
    });
    $('#contentmess').keypress(function (e) {
        var key = e.which;
        if(key == 13)  // the enter key code
        {
            stompClient.send("/app/hello/"+userid, {}, $("#contentmess").val());
            append()
        }
    });
});

// nối vào đoạn chat ngay sau khi gửi
function append() {
    var tinhan = `<p class="adminchat">${$("#contentmess").val()}</p>`
    document.getElementById('listchatadmin').innerHTML += tinhan;
    var scroll_to_bottom = document.getElementById('listchatadmin');
    scroll_to_bottom.scrollTop = scroll_to_bottom.scrollHeight;
    document.getElementById("contentmess").value = ''
}



function appendRecivers (message) {
    var cont = `<p class="mychat">${message}</p>`
    document.getElementById('listchatadmin').innerHTML += cont;
    var scroll_to_bottom = document.getElementById('listchatadmin');
    scroll_to_bottom.scrollTop = scroll_to_bottom.scrollHeight;
}


function chuyenTrang(iduser){
    var uls = new URL(document.URL)
    var userid = uls.searchParams.get("user");
    if(userid == iduser){
        return;
    }
    window.location.href = 'chat?user='+iduser;
}


async function loadTinNhanAdmin(){
    var uls = new URL(document.URL)
    var userid = uls.searchParams.get("user");
    if(userid == null){
        document.getElementById("mainchatadmin").style.display = "none";
        return;
    }
    const res = await fetch('/api/chat/admin/getListChat?idreciver='+userid, {
        method: 'GET'
    });
    var list = await res.json();
    var main = '';
    for(i=0; i< list.length; i++){
        if(list[i].sender.role == "ROLE_STUDENT"){
            main += `<p class="mychat">${list[i].content}</p>`
        }
        else{
            main += `<p class="adminchat">${list[i].content}</p>`
        }
    }
    document.getElementById("listchatadmin").innerHTML = main;
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