const http = require("http");

const port = process.env.PORT || 8080;

http
  .createServer((req, res) => {
    res.writeHead(200, { "content-type": "application/json" });
    res.end(JSON.stringify({ service: "storefront", path: req.url, arch: process.arch }));
  })
  .listen(port, () => console.log(`storefront listening on ${port}`));
