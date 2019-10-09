<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String ipPort = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>EPG推荐位进入缤纷大厅退出提示导流到反斗城</title>
<meta name="page-view-size" content="1280*720" />
<link rel="stylesheet" type="text/css" href="${CONTEXT_PATH}/css/base.css?v=1.0" />
<script type="text/javascript" src="${CONTEXT_PATH}/js/base.js?v=1.0"></script>
<script type="text/javascript" src="${CONTEXT_PATH}/js/homeExit.js?v=1.0"></script>
</head>
<!--
<body style="width:1280px;height:720px;background-image: url(${CONTEXT_PATH}/images/intercept/homeExit/new/bg.jpg);background-repeat:no-repeat;">

<div id="homeExit-item0" style="width:211px;height:81px;left:400px;top:527px;">
<img src="${CONTEXT_PATH}/images/intercept/homeExit/new/enterfdc.png">
</div>

<div id="homeExit-item1" style="width:211px;height:81px;left:1027px;top:17px;">
<img src="${CONTEXT_PATH}/images/intercept/homeExit/new/exitbf.png">
</div>
-->
<!-- 沃橙大厅反斗城统计 2019-09-09修改
<iframe style="display: none;" src="http://124.132.254.206:9141/toUrl/toUrl.html?contId=221843835&backurl=${goUrl}" width="0" height="0" scrolling="no" frameborder="0"></iframe>
 -->
<script type="text/javascript">
var backUrl =  "${goUrl}";
var backUrl2 = '';
	backUrl = unescape(backUrl);
	backUrl = unescape(backUrl);
	backUrl = unescape(backUrl);
	if(backUrl.indexOf('epgReturnUrl') > -1){ // 有这个返回地址
		var afterUrl = getCaption(backUrl, '\epgReturnUrl=', 'after');
		var befoerUrl = getCaption(backUrl,'\epgReturnUrl');
		backUrl = escape(escape(befoerUrl+'epgReturnUrl='+ escape(escape(afterUrl))));
		backUrl2 = befoerUrl+'epgReturnUrl='+ escape(escape(afterUrl));
	}else{
		backUrl2 = backUrl;
	}
	function key_back_event(){ // 解码后的url
		// window.location.href = backUrl2;
	}
	// 截取开始，还是结束例如：aa开始到结束，或者 从头截取到aa
	function getCaption(obj,str, befoerOrAfter){
		var index=obj.lastIndexOf(str);
		if(befoerOrAfter=='after'){
			obj=obj.substring(index + str.length ,obj.length);
		}else{
			obj=obj.substring(0,index);
		}
		return obj;
	}
	window.onload = function() {
		butList=[];
			addButData("homeExit-item0", "${CONTEXT_PATH}/images/intercept/homeExit/new/enterfdc.png", "${CONTEXT_PATH}/images/intercept/homeExit/new/enterfdc2.png","<%=ipPort%>/fandoucheng/auth.jsp?user=${user}&stbType=${stbType}&userID=${user}&zyUserToken=${zyUserToken}&enterURL="+backUrl, "0");
			addButData("homeExit-item1", "${CONTEXT_PATH}/images/intercept/homeExit/new/exitbf.png", "${CONTEXT_PATH}/images/intercept/homeExit/new/exitbf2.png", backUrl2, "0");
		rowList.push(butList);
			rowList[0][1].enterUrl = backUrl;
			row = 0;
			focusIndex = 1; // 2019-09-09修改为 1
		// setDivImgSrc(rowList[row][focusIndex].id, rowList[row][focusIndex].src2);
		SavePv("${userActionIUrl}", "${user}", "${productID}", 0, 9, 0, 0);
		setTimeout(
			function(){
				window.location.href = rowList[row][focusIndex].enterUrl;// 跳转到反斗城
		},3000)
	};

</script>
</body>

</html>