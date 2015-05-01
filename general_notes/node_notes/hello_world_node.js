var http = require('http');
http.createServer(function(req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World!\n');
}).listen(1337, '127.0.0.1');
console.log('Server running at localhost:1337');

// setTimeout(function() {
//     console.log("world");
// }, 2000);
// console.log("hello");