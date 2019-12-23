from urllib.parse import urlparse

def get_domain(currentUrl):
    parsed_uri = urlparse(currentUrl)
    domain = '{uri.scheme}://{uri.netloc}/'.format(uri=parsed_uri)
    return domain