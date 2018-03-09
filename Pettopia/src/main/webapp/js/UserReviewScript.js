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
        $('#tableRows').append('<tr ><td>' + user.firstName + '</td><td>' + user.lastName+ '</td ><td>' + user.job+ '</td ><td>' + user.email+ '</td > <td>' + user.creditLimit.toString()+ '</td > <td>' + user.creditNo + '</td></tr>'); 
    }   
    else{
        console.log("undefined");
    }
    
}
