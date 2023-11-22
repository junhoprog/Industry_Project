/*
// Step 이벤트
y += speed; // 오브젝트가 아래로 이동

// 특정 높이에 도달하면 오브젝트를 복사하여 새로운 복사본 생성
if (y > 5) {
    var new_Smoke = instance_create_depth(x, y, 0, obj_smoke); // obj_Smoke는 복사할 오브젝트의 이름
    new_Smoke.speed = speed; // 새로운 오브젝트에 이전 오브젝트의 이동 속도 전달
}
*/