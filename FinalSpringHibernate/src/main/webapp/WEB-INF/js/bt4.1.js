var name = prompt("Nhap vao ho va ten: ");
var age = prompt("Nhap vao tuoi: ");
document.getElementById("info").innerHTML = "Name : " + name +"<br> Age : "+age ;

var number = prompt("Nhap vao 1 so N : ");
var result = document.getElementById("result");
var S = 0;
for(var i = 1; i <= number; i++){
    S += i;
}
result.innerHTML = "Tong tu 1 -> " + number + " : " + S;

function TaoSoNgauNhien(min, max){
    return Math.floor(Math.random() * (max - min)) + min;
}
var numberR = prompt("Nhap vao so ngau nhien : ");
var n = TaoSoNgauNhien(10,99);
if(n == numberR){
    alert("Chúc mừng bạn – Bạn đã đoán đúng số máy tự sinh ra" );
}else{
    alert("Rất tiếc – Chúc bạn may mắn lần sau " );
}
document.getElementById("randomN").innerHTML = "Số ngẫu nhiên : " + n ;