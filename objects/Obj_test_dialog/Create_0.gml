/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


triggered = 0

chk_col = 0

fire_safety_tips = [
    "불이나면 옷장 안이나 침대 밑에 숨는다",
    "정전으로 어두워진 실내에서는 한손으로\n 한쪽 벽을 두드리면서 나간다.",
    "앨리베이터를 타고 빨리 대피한다.",
    "유도등 유도표지를 따라 대피한다.",
    "아래층으로 대피가 불가능 할 때는 \n옥상으로 대피한다.",
    "허리를 펴고 똑바로 서서 이동한다.",
    "코와 입을 젖은 수건등으로 막는다.",
    "출입문을 열기전 문손잡이가 뜨거울경우\n 다른길을 찾는다.",
    "옷에 불이 붙었을경우 눈과 입을 \n가리고 바닥에서 뒹군다.",
    "문을 반드시 닫고 대피한다.",
    "가스 냄새가 나서 창문을 열고 선풍기를\n 틀어 가스가 밖으로 나가도록 유도한다.",
    "콘센트를 사용했으면 다음을 위해 \n콘센트를 그대로 놔둬 괜찮다.",
    "소화기로 초기 진화가 어렵다고 \n판단되면 서둘러서 대피한다.",
    "화상부위는 차가운 얼음을 올려서\n식혀준다.",
    "화재가 났을 때 곧바로 119에 \n신고한다.",
    "화재시 탈출 할 수 있는 비상대피도의\n 위치를 파악해 놓는다.",
    "불이 났을 경우 환풍구가 있는 화장실로\n 대피하여 문을 닫아 놓는다.",
    "물에 젖은 손으로 콘센트를 \n만져도 무방하다.",
    "식용유에 불이 붙었을 경우 빠르게\n 물을 뿌려 대처한다.",
    "화재경보기가 있는 장소에서는 \n자동으로 신고가 되기 때문에\n조용히 빠르게 대피한다.",
    "콘센트에 먼지가 많은경우 화재가 나기 \n더 쉽기 때문에 청소를 잘 해준다.",
    "화재시 대피 할 경우 덥지 않게 최대한\n 얇은 옷을 입고 \n빠르게 대피한다.",
    "건물 내부에 소방시설을 알기 위해 \n부모님께 물어본다.",
    "화재를 인지했을 경우 화재규모가 작다고\n 판단되면 필요한 물건을 \n전부 챙겨서 나간다.",
    "내가 화재를 인지했다면, 다른 사람도 \n인지했다고 판단하고 \n빠르게 대피한다."
]

fire_safety_OX = [
    false, true, false, true, true, false, true, true, true, true, 
    false, false, true, false, true, true, true, false, false, false, 
    true, false, true, false
]



answered=false

show_Draw_timer = 0;

is_choice=false;

is_done=false