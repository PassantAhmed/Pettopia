function sendEmail() {  
    var email = $("#uEmail").val();
    var objMessage = { "email": email };
    $.ajax({
        url: 'UserReviewServlet',
        type: 'GET',
        contentType: 'application/json',
        data: objMessage,
        dataType: 'json',
        success: function(value) {
           // $("#test").val = value.firstName;
            console.log("Success");
           // console.log("value of name is:" + value.firstName);
        }
    });
}


function refresh() {
    $.ajax({
        url: 'UserReviewServlet',
        type: 'POST',
        contentType: 'application/json',
        dataType: 'json',
        success: refreshUser
    });
}

function refreshUser(val) {
    var user = val;
    console.log("job "+user.job);
    if(typeof user.firstName  !== "undefined")
    {
       $("#tableRows tr").remove();
        console.log("user first name "+user.firstName);
        $('#tableRows').append('<tr><td align="center">' + user.firstName + '</td><td align="center">' + user.lastName+ '</td ><td align="center">' + user.birthDate+ '</td > <td align="center">' + user.job+ '</td ><td align="center">' + user.email+ '</td > <td align="center">' + user.creditLimit.toString()+ '</td > <td align="center">' + user.creditNo + '</td></tr>'); 
    }   
    else{
        console.log("undefined");
    }
    
}
