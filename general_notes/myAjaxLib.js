function getXMLHttpRequest() {
    try {
        try {
            return new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(e) {
            return new ActiveXObject("Msxml2.XMLHTTP");
        }
    }
    catch(e) {
        return new XMLHttpRequest();
    }
}

function doAjax(url, query, callback, reqtype, getxml) {
    var myreq = getXMLHttpRequest();
    myreq.onreadystatechange = function() {
        if(myreq.readyState==4) {
            if(myreq.status==200) {
                var item = myreq.responseText;
                if(getxml==1) {
                    item = myreq.responseXML;
                    eval(callback + '(item)');
                }
            }
        }
    }
    if(reqtype.toUpperCase()=='POST') {
        requestPOST(url, query, myreq);
    } else {
        requestGET(url,query, myreq);
    }
}