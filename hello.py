def app(environ, start_response):
    q_string = environ.get('QUERY_STRING')
    print("!!!!!")
    print(q_string)
    print("!!!!!")
    return iter([data])
