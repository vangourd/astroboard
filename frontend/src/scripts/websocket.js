console.log("Test");

const ws = new WebSocket('ws://127.0.0.1:8080/ws/');
const logBox = document.getElementById('log-box');

ws.onmessage = function(event) {
  logBox.textContent += event.data;
};

ws.onerror = function(error) {
    console.error("WebSocket Error", error);
};
