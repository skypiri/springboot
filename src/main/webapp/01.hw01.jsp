<%@ page contentType = "text/html;charset=utf-8" %>
<%!
    String fnScore(String height, String weight) {
    
    Integer h = Integer.parseInt(height);
    Integer w = Integer.parseInt(weight);
    
    System.out.println(h);
    System.out.println(w);
    
    double stdWeight = (h - 100) * 0.85;
    System.out.println(stdWeight);
    double fat = (double)((h / stdWeight) * 100);
    
    if (fat >= 120) {
        return "비만";
    } else if (fat >= 110) {
        return "과체중";
    } else if (fat >= 90) {
        return "정상";
    } else {
        return "저체중";
    }
}
%>

<%	
    String height = request.getParameter("height");
    String weight = request.getParameter("weight");

    String myFat = fnScore(height, weight);

    String result = String.format("<h1>키 : %s</h1>\n<h1>몸무게 : %s</h1>\n<h1>결과 : %s</h1>", height, weight, myFat);
    out.print(result);

    String imgSrc = "";

    if(myFat == "비만") {
        imgSrc = "/images/obese.png";
    } else if (myFat == "과체중") {
        imgSrc = "/images/over.png";
    } else if (myFat == "정상") {
        imgSrc = "/images/normal.png";
    } else {
        imgSrc = "/images/under.png";
    }
    
    String img = String.format("<img src=%s>", imgSrc);
    out.print(img);
%>