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
       $("#userData p").remove();
       $("#userData table").remove();
        console.log("user first name "+user.firstName);
        $('#userData').append('<table><tr><p><td>First Name: ' + user.firstName + '</td></p><p><td>Last Name: ' + user.lastName+ '</td></p><p><td>Job: ' + user.job+ '</td></p><p><td>Email: ' + user.email+ '</td></p><p><td>Credit Limit: ' + user.creditLimit.toString()+ '</td></p><p><td>Credit Number: ' + user.creditNo + '</td></p></tr></table>'); 
    }   
    else{
        console.log("undefined");
    }
    
}
