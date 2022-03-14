<%@ page contentType = "text/html;charset=utf-8" %>
<%	

    String myname = request.getParameter("myname");
    String myphone = request.getParameter("myphone");
    String myemail = request.getParameter("myemail");

    String mysize = request.getParameter("order_size");
    String[] mytopping = request.getParameterValues("topping");
    String strTopping = String.join(",", mytopping);
    String mytime = request.getParameter("mytime");
    String mytext = request.getParameter("mytext");

%>


<h3>고객명 : <%=myname%> </h3>
<h3>전화번호 : <%=myphone%> </h3>
<h3>이메일 :<%=myemail%></h3>
<h3>피자사이즈 :<%=mysize%></h3>
<h3>토핑선택 : <%=strTopping%></h3>
<h3>희망배송시간 : <%=mytime%></h3>
<h3>배송시 요청사항 : <%=mytext%></h3>

