
export function urlPath(applicationPath, tenant) {
    return applicationPath;
}

export function getHostnameAndPort(request) {
    const hostnameWithPort = request.headers.get("host");
    const [hostname, port] = hostnameWithPort.split(":");
    return [hostname, port];
}
export function buildUrl(applicationPath, tenant, request) {
    const [hostname, port] = getHostnameAndPort(request);
    const portSuffix = port && port != "443" ? `:${port}` : "";
    const { protocol } = request.nextUrl;
    const tenantUrl = `${protocol}//${hostname}${portSuffix}/`;
    return new URL(urlPath(applicationPath, tenant), tenantUrl);
}

  