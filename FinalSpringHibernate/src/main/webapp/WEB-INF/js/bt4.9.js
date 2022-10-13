var a = document.getElementById("value1");
var b = document.getElementById("value2");
var kq = 0;
plus.addEventListener("click", function (e) {
    e.preventDefault();
    kq = parseInt(a.value) + parseInt(b.value);
    document.getElementById("result").innerHTML = "KQ : " + kq;
})
minus.addEventListener("click", function (e) {
    e.preventDefault();
    kq = a.value - b.value;
    document.getElementById("result").innerHTML = "KQ : " + kq;
})
multiply.addEventListener("click", function (e) {
    e.preventDefault();
    kq = a.value * b.value;
    document.getElementById("result").innerHTML = "KQ : " + kq;
})
divide.addEventListener("click", function (e) {
    e.preventDefault();
    kq = a.value / b.value;
    document.getElementById("result").innerHTML = "KQ : " + kq;
})
