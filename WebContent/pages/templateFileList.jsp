<!DOCTYPE html>
<%@ include file="commonHeader.jsp"%>
<html>

<head>

<title>Template Form Lists</title>

<link rel="stylesheet" type="text/css" href="js/lib/easyui/themes/default/easyui.css">

<link rel="stylesheet" type="text/css" href="js/lib/easyui/themes/icon.css">


<script type="text/javascript" src="js/lib/jquery-1.3.2.min.js"></script>

<script type="text/javascript" src="js/lib/easyui/jquery.easyui.min.js"></script>
<script>
    function formatterFuc(node) {
        var s = node.text;
        if (node.children) {
            s += '&nbsp;<span style="color:blue"> (' + node.children.length
                    + ')</span>';
        }
        return s;
    }
</script>
</head>

<body>

  <h2>Template Form Lists</h2>

  <ul class="easyui-tree" data-options="formatter:formatterFuc">

    <li><span>Form Lists</span>
      <ul>
        <s:iterator value="fileList" var="sup">
          <li><span><s:a href="./html/%{#sup}">
                <s:property value="%{#sup}" />
              </s:a></span> <s:if test="filelistrecords.size>0">
              <ul>
                <s:iterator value="filelistrecords[#sup]" var="li">
                  <li><s:property value="%{#li}" />&nbsp;&nbsp;&nbsp;<s:a href="html/edituserdata.action?recordId=%{#li}">Edit</s:a>&nbsp;&nbsp;&nbsp;<s:a href="html/deleteuserdata.action?recordId=%{#li}">Delete</s:a></li>
                </s:iterator>
              </ul>
            </s:if></li>
        </s:iterator>
      </ul></li>
  </ul>

</body>

</html>