document.addEventListener("DOMContentLoaded", function (event) {
    if (document.getElementsByName("pt")[0].checked) {
        hiddenElement();
    }
});
function hiddenElement() {
    document.getElementById("value3").style.display = "none";
    document.getElementById("label3").style.display = "none";
}
function showElement() {
    document.getElementById("value3").style.display = "inline";
    document.getElementById("label3").style.display = "inline";
}

var radios1 = document.getElementsByName("pt")[0];
var radios2 = document.getElementsByName("pt")[1];

var a = document.getElementById("value1");
var b = document.getElementById("value2");
var c = document.getElementById("value3");
var run = document.getElementById("run");
run.addEventListener("click", function (e) {
    e.preventDefault();
    if (radios1.checked) {
        var x = b.value / a.value;
        document.getElementById("result").innerHTML = "Phuong trinh co nghiem x : " + x;
    } else if (radios2.checked) {
        d = b.value * b.value - 4 * a.value * c.value
        k = -b.value / (2 * c.value)
        d1 = (-b.value + Math.sqrt(d)) / (2 * a.value)
        d2 = (-b.value - Math.sqrt(d)) / (2 * a.value)
        if (d < 0) {
            document.getElementById("result").innerHTML = "Phương trình vô nghiệm";
        } else if (d == 0) {
            document.getElementById("result").innerHTML = "Phương trình có nghiệm kép x1 = x2 =' + k";
        } else {
            document.getElementById("result").innerHTML = "Phương trình có 2 nghiệm  <br> x1 = " + d1 + "<br> x2 =" + d2;

        }
    }

})
