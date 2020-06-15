def app(environ, start_response):
    sstr = environ.get('QUERY_STRING').split("&")
    body = ""
    for pair in sstr:
        body += pair + "\n"
    response_string = [('Content-type', 'text/plain')]
    start_response('200 OK', response_string)
    print(body.strip())
    return [body.strip()]
