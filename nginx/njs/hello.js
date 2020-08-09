function hello(r) {
  r.headersOut['Content-Type'] = 'text/plain; charset=utf-8';
  r.return(200, 'Hello, njs!');
}

export default hello;
