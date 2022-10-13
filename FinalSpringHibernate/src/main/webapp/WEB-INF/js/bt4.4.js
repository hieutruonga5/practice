var str = prompt("Nhap chuoi bat ki : ");
var lg = str.length;
var strs = str.substring(lg-1, lg) + str.substring(1,lg-1) + str.substring(0,1);
document.getElementById("info").innerHTML = "Chuoi nhap : "+str + "<br> Chuoi dao nguoc : "+strs;
var strN = str.substring(0,1) + str + str.substring(0,1);
document.getElementById("bt4.5").innerHTML =  "<br> Chuoi new : "+strN;