try:
    import vim
    from urllib import urlencode
    from urllib2 import Request, urlopen

    request = Request('https://dpaste.de/api/', urlencode({
        'content': '\n'.join(vim.current.buffer),
        'lexer': 'python',
        'format': 'url',
    }))
    print urlopen(request).read()
except Exception as e:
    print "Something went wrong. Error log at paster.error"
    f = file('paster.error', 'a')
    f.write(e.__repr__())
    f.close()
