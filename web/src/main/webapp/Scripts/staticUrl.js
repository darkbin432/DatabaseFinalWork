// 基础路由
var localObj = window.location;
var contextPath = localObj.pathname.split("/")[1];
var basePath = localObj.protocol + "//" + localObj.host + "/";
var server_context = basePath;
var rootPath = basePath + contextPath;