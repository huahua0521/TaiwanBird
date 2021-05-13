//
//  Bird.swift
//  TaiwanBird
//
//  Created by BRAVO iDEAS on 2021/5/12.
//

import Foundation
struct Bird {
    let name : String
    let voiceUrl : String?
    let scientificName : String
    let engName : String
    let description : String
    let sound : String
    let imageUrl : String
    
}

extension Bird{
    
    static var birds : [Self] {
        [
            
            Bird(name: "白頭翁",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322639598-l.mp3",
                 scientificName: "Pycnonotus sinensis",
                 engName: "Light-vented Bulbul",
                 description: "全長約 18 公分，翼黃綠色，背灰褐，胸、腹白色局部帶污，頭頂白色似瓜皮帽 的特徵為辨識重點之一。",
                 sound: "鳴聲類型多樣，終年可聞，以繁殖季節最為喧鬧。清晨時分，電線、樹頂等突出 點可見雄鳥引頸歡唱 ，是愛鳥人戲稱為「巧、克力...」的歌聲曲目。雖然 沒有小彎嘴曲目輪唱的多樣，但具有明顯的方言現象，變異頗大，村內、 村外個體即可聽出差異。其他單調的叫聲與警戒聲也是經常聽到的類型。",
                 imageUrl: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/158684291/1800"),
            
            Bird(name: "烏頭翁",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322639341-l.mp3",
                 scientificName: "Pycnonotus taivanus",
                 engName: "Styan's Bulbul",
                 description: "全長約 18 公分，顧名思義頭頂部黑色，有別於白頭翁的白頭，本種具黑色八字 鬍與嘴角橘紅色斑，白頭翁無此特徵。此外，兩種的外形、大小，甚至生態、習 性幾乎一樣。",
                 sound: "鳴聲行為和白頭翁極為相似，兩種共域活動的場合單憑聲音不易分辨。繁殖期鳴 唱熱烈 ，曲目多樣，也具有明顯的方言現象。一般的鳴叫聲在音調上也有 多種變化，危險時則發出急促的警戒聲。",
                 imageUrl: "https://www.newsmarket.com.tw/files/2021/03/110_l-8b4ac3a9.jpg"),
            
            Bird(name: "紅鳩",
                 voiceUrl: "http://www.taisong.org/public/sounds/13799865871h3p-l.mp3",
                 scientificName: "Streptopelia tranquebarica",
                 engName: "Red Turtle Dove",
                 description: "全長約 23 公分，雄全身紅褐色，雌灰褐色，兩性頸後部皆有半圈黑紋，是平原、 丘陵地帶常見三種斑鳩中體型最小者。",
                 sound: "",
                 imageUrl: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/85868851/1800"),
            
            Bird(name: "綠鳩",
                 voiceUrl: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/281423",
                 scientificName: "Treron sieboldii",
                 engName: "White-bellied Green Pigeon",
                 description: "全長約 30 公分，雌、雄羽色稍異，全身大致呈綠黃色，翼暗綠色，惟雄鳥翼肩 有一片紫紅色斑。",
                 sound: "鳴聲有如電視影集「泰山」的呼吼聲 ，其聲低沉，迴盪山間，是台灣鳥類中 最具特色的鳴聲之一，此為雄鳥的鳴唱聲，春、夏兩季常聞。",
                 imageUrl: "https://photox.pchome.com.tw/s11/nora530/100/129127571953/"),
            
            Bird(name: "紅嘴黑鵯",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322639671-l.mp3",
                 scientificName: "Hypsipetes leucocephalus",
                 engName: "Black Bulbul",
                 description: "全長約 24 公分，通體黑色，翼上顏色稍淡，嘴、腳紅色。除繁殖期外，皆成群活動，晨昏時段常見數十隻林稍群集，主食昆蟲、果實，春、 夏季繁殖。",
                 sound: "園區內，低海拔景點步道上少了牠們顯得孤寂，有了牠們卻過於喧鬧。停站高枝 或電線上定點獨唱的歌聲具節奏感，還算悅耳。第 2 段是被愛鳥人 戲稱為「小氣鬼...」的歌聲曲目。方言現象普遍而明顯，除了音調、節奏上的變 化外，有些曲目會多出完全不同的聲音元素。成群活動時，吱吱喳喳較為 喧鬧 。似羊咩的叫聲 (背景有山紅頭、棕面鶯、樹鵲、小彎嘴等鳴聲) 是發現天敵時的警戒聲。",
                 imageUrl: "https://pbs.twimg.com/media/DvOmJmqVsAAxKQm.jpg"),
            
            Bird(name: "綠繡眼",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322639914-l.mp3",
                 scientificName: "Zosterops japonicus",
                 engName: "Japanese White-eye",
                 description: "全長約 11 公分，體上部黃綠色，胸、腹污白，白眼圈為其辨識特徵之一。主要活動於低海拔山區以下至海邊，數量普遍常見。玉山園區內以海拔約 1500 公尺以下之人類聚落、農耕地及其附近次生疏林中常見。春、夏季繁殖期間多成對活動，冬季成大小不等的群體，主食昆蟲、果實、花蜜， 育雛期間捕食大量昆蟲。屬非保育類鳥種，加上善鳴唱且容易飼養，遭獵捕情況 嚴重。",
                 sound: "鳴聲類型多樣性高，雄鳥僅於繁殖期間(3~7 月)鳴唱 ，主要集中在天剛 亮時，大多在一小時之內止鳴，白天鳴唱的個體少，歌聲地理變異(方言現象) 不明顯。另有一種終年可聞、音量輕柔且富變化的細碎鳴聲，可能也是雄 鳥的鳴唱行為之一，黃尾鴝、紅尾伯勞等也具有類似鳴聲。歌聲、召喚同伴聲 、警戒聲  皆屬清脆的音調。成群活動時，幾乎每一個體皆發出輕細的 單音節叫聲(類似第 3 段叫聲)，藉此維繫群體的聚合力。",
                 imageUrl: "https://twgreatdaily.com/images/elastic/I4X/I4XctmwBvvf6VcSZU4Jb.jpg"),
            
            Bird(name: "麻雀",
                 voiceUrl: "https://cdn.download.ams.birds.cornell.edu/api/v1/asset/337261511",
                 scientificName: "Passer montanus",
                 engName: "Eurasian Tree Sparrow",
                 description: "全長約 14 公分，體上部大致為濃淡不一的栗紅色，點綴黑、白斑紋;體下部灰 白。臉頰黑斑為辨識特徵之一，嘴型如錐。逐人類的開墾區而居，群棲性，主食榖類、昆蟲、草籽等，亦食人類丟棄之物， 因食物足、天敵少，種群數量龐大。主要在春、夏季繁殖。",
                 sound: "人云「吱吱喳喳有如麻雀」，可見麻雀隨時隨地喧鬧的習性。繁殖期間終日聒噪， 常見雄鳥獨站一處，長時間發出或緩或急鳴聲 ， 繁殖階段的雄鳥較會出現奇聲怪調;冬季天剛亮，在夜宿點外出活動前的叫聲，作者稱之為起床聲。",
                 imageUrl: "https://images.chinatimes.com/newsphoto/2021-04-19/656/20210419002077.jpg"),
           
            Bird(name: "山麻雀",
                 voiceUrl: "jhttps://cdn.download.ams.birds.cornell.edu/api/v1/asset/326480461",
                 scientificName: "Passer cinnamomeus",
                 engName: "Russet Sparrow",
                 description: "全長約 14 公分，雄鳥體背紅棕色，喉中央黑色帶，胸、腹灰白;雌鳥體背褐色， 喉部無黑色帶，具黃白色眉線，胸、腹污白。形似麻雀，但本種臉頰不具黑斑。",
                 sound: "鳴聲類型少，變化也不大，與麻雀鳴聲極為相似。「啾-啾-...」是基本音， 不同個體或性別節奏與音調稍有變化 。繁殖初期，雄鳥求偶聲熱烈而持久，有時混雜金屬音。",
                 imageUrl: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Russet_Sparow_%28Male%29_I_IMG_6779.jpg/400px-Russet_Sparow_%28Male%29_I_IMG_6779.jpg"),
            
            Bird(name: "台灣畫眉",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322638716-l.mp3",
                 scientificName: "Garrulax taewanus",
                 engName: "Taiwan Hwamei",
                 description: "全長約 24 公分，全身大致呈棕褐色，頭、頸部綴有黑色縱紋。與大陸畫眉羽色 相似，但大陸畫眉具白色眉線。自古以來，即因聲韻優美動人而招來囹圄之災，常被愛鳥人關在籠中飼養，導致 野外種群數量不多。春、夏季繁殖，以昆蟲、果實為食，領域性強，單獨或成對 活動。",
                 sound: "終年可聞雄鳥鳴唱聲，但以春季鳴唱較為熱烈持久。歌聲嘹亮，雌鳥時有 一旁應合 ，此為部分畫眉科鳥類常見的二重唱行為。鳴聲類型少，歌聲曲 目單一，但鳴唱曲調變化大，且善於模仿別種鳥的鳴聲，已知模仿的對象有大卷 尾、竹雞、大冠鷲等。",
                 imageUrl:"https://6.share.photo.xuite.net/jpwubirdandtravel/163d50e/10230239/466883375_m.jpg"),
            
            Bird(name: "冠羽畫眉",
                 voiceUrl: "http://www.taisong.org/public/sounds/1322639065-l.mp3",
                 scientificName: "Yuhina brunneiceps",
                 engName: "Taiwan Yuhina",
                 description: "全長約 13 公分，體上部大致灰褐色，體下灰白帶黃，頭頂褐色羽冠是名字的由 來，也是野外辨識特徵之一。成群於樹林中、上層活動，春、夏季主要在中海拔山區繁殖，有集體營巢繁殖的 行為，秋冬季遷降低處度冬，主食昆蟲、果實、花蜜等。",
                 sound: "同一個體的歌聲曲目單一，曲調變化也不大，「To meet you-」是大家熟悉的曲 目。也具有方言現象，但變異程度不大;成群活動時，會有 一、二隻發出一般叫聲 118-4;發現天敵則群起發出急切的警戒聲。",
                 imageUrl:"http://www.taisong.org/public/photos/13231384491p8i-l.jpg")
            
        ]
    }
    
}
