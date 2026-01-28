function proxy
    set -gx https_proxy http://127.0.0.1:8889
    set -gx http_proxy http://127.0.0.1:8889
end

function noproxy
    set -e https_proxy
    set -e http_proxy
end
