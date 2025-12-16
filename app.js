const http = require('http');

const server  = http.createServer((req,res) =>{
    res.writeHead(200,{'Content-Type':'text/plain'});
    res.end('Hello from node.js running in Docker using EC2!\n');
});

server.listen(3000, () =>{
    console.log('server running on port 3000')
});