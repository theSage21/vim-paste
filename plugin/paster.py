try:
    import vim
    from urllib import urlencode
    from urllib2 import Request, urlopen

    request = Request('https://dpaste.de/api/', urlencode({
        'content': '\n'.join(vim.current.buffer),
        'lexer': 'python',
        'format': 'url',
    }))
    paste_url = urlopen(request).read()
    try:
        from pyperclip import copy
        copy(paste_url)
    except:
        pass
    print paste_url
except Exception as e:
    print "Error: ", e
