//
//  Alphabets.swift
//  Thai-For-Beginer
//
//  Created by Waleerat Gottlieb on 2020-10-31.
//

import Foundation

var AlphabetRows = [
   ["001" ,"ก","ก ไก่","ko kai","chicken","k","k","[k]","[k̚]","mid"],
   ["002" ,"ข","ข ไข่","kho khai","egg","kh","k","[kʰ]","[k̚]","high"],
   ["003" ,"ฃ","ฃ ขวด","kho khuat","bottle (obsolete)","kh","k","[kʰ]","[k̚]","high"],
   ["004" ,"ค","ค ควาย","kho khwai","buffalo","kh","k","[kʰ]","[k̚]","low"],
   ["005" ,"ฅ","ฅ คน","kho khon","person (obsolete)","kh","k","[kʰ]","[k̚]","low"],
   ["006" ,"ฆ","ฆ ระฆัง","kho ra-khang","bell","kh","k","[kʰ]","[k̚]","low"],
   ["007" ,"ง","ง งู","ngo ngu","snake","ng","ng","[ŋ]","[ŋ]","low"],
   ["008" ,"จ","จ จาน","cho chan","plate","ch","t","[tɕ]","[t̚]","mid"],
   ["009" ,"ฉ","ฉ ฉิ่ง","cho ching","cymbals","ch"," –","[tɕʰ]","–","high"],
   ["010" ,"ช","ช ช้าง","cho chang","elephant","ch","t","[tɕʰ]","[t̚]","low"],
   ["011" ,"ซ","ซ โซ่","so so","chain","s","t","[s]","[t̚]","low"],
   ["012" ,"ฌ","ฌ เฌอ","cho choe","tree","ch"," –","[tɕʰ]","–","low"],
   ["013" ,"ญ[a]","ญ หญิง","yo ying","woman","y","n","[j]","[n]","low"],
   ["014" ,"ฎ","ฎ ชฎา","do cha-da","headdress","d","t","[d]","[t̚]","mid"],
   ["015" ,"ฏ","ฏ ปฏัก","to pa-tak","goad, javelin","t","t","[t]","[t̚]","mid"],
   ["016" ,"ฐ[b]","ฐ ฐาน","tho than","pedestal","th","t","[tʰ]","[t̚]","high"],
   ["017" ,"ฑ","ฑ มณโฑ","tho montho","Montho, character from Ramayana","th or d","[tʰ] or [d]","[t̚]","low"],
   ["018" ,"ฒ","ฒ ผู้เฒ่า","tho phu-thao","elder","th","t","[tʰ]","[t̚]","low"],
   ["019" ,"ณ","ณ เณร","no nen","samanera","n","n","[n]","[n]","low"],
   ["020" ,"ด","ด เด็ก","do dek","child","d","t","[d]","[t̚]","mid"],
   ["021" ,"ต","ต เต่า","to tao","turtle","t","t","[t]","[t̚]","mid"],
   ["022" ,"ถ","ถ ถุง","tho thung","sack","th","t","[tʰ]","[t̚]","high"],
   ["023" ,"ท","ท ทหาร","tho thahan","soldier","th","t","[tʰ]","[t̚]","low"],
   ["024" ,"ธ","ธ ธง","tho thong","flag","th","t","[tʰ]","[t̚]","low"],
   ["025" ,"น","น หนู","no nu","mouse","n","n","[n]","[n]","low"],
   ["026" ,"บ","บ ใบไม้","bo baimai","leaf","b","p","[b]","[p̚]","mid"],
   ["027" ,"ป","ป ปลา","po pla","fish","p","p","[p]","[p̚]","mid"],
   ["028" ,"ผ","ผ ผึ้ง","pho phueng","bee","ph"," –","[pʰ]","–","high"],
   ["029" ,"ฝ","ฝ ฝา","fo fa","lid","f"," –","[f]","–","high"],
   ["030" ,"พ","พ พาน","pho phan","phan","ph","p","[pʰ]","[p̚]","low"],
   ["031" ,"ฟ","ฟ ฟัน","fo fan","teeth","f","p","[f]","[p̚]","low"],
   ["032" ,"ภ","ภ สำเภา","pho sam-phao","junk","ph","p","[pʰ]","[p̚]","low"],
   ["033" ,"ม","ม ม้า","mo ma","horse","m","m","[m]","[m]","low"],
   ["034" ,"ย","ย ยักษ์","yo yak","giant, yaksha","y","n[c]","[j]","[n]","low"],
   ["035" ,"ร","ร เรือ","ro ruea","boat","r","n","[r]","[n]","low"],
   ["036" ,"ล","ล ลิง","lo ling","monkey","l","n","[l]","[n]","low"],
   ["037" ,"ว","ว แหวน","wo waen","ring","w","–[d]","[w]","–","low"],
   ["038" ,"ศ","ศ ศาลา","so sala","pavilion, sala","s","t","[s]","[t̚]","high"],
   ["039" ,"ษ","ษ ฤๅษี","so rue-si","hermit","s","t","[s]","[t̚]","high"],
   ["040" ,"ส","ส เสือ","so suea","tiger","s","t","[s]","[t̚]","high"],
   ["041" ,"ห","ห หีบ","ho hip","chest, box","h","–","[h]","–","high"],
   ["042" ,"ฬ","ฬ จุฬา","lo chu-la","kite","l","n","[l]","[n]","low"],
   ["043" ,"อ","อ อ่าง","o ang","basin","–[e]"," –","[ʔ]","–","mid"],
   ["044" ,"ฮ","ฮ นกฮูก","ho nok-huk","owl","h"," –","[h]","–","low"],
]


var AlphabetRows01 = [
   ["0101" ,"ก","ก ไก่","ko kai","chicken","k","k","[k]","[k̚]","mid"],
   ["0202" ,"ข","ข ไข่","kho khai","egg","kh","k","[kʰ]","[k̚]","high"],
   ["0203" ,"ฃ","ฃ ขวด","kho khuat","bottle (obsolete)","kh","k","[kʰ]","[k̚]","high"],
   ["0304" ,"ค","ค ควาย","kho khwai","buffalo","kh","k","[kʰ]","[k̚]","low"],
   ["0305" ,"ฅ","ฅ คน","kho khon","person (obsolete)","kh","k","[kʰ]","[k̚]","low"],
   ["0306" ,"ฆ","ฆ ระฆัง","kho ra-khang","bell","kh","k","[kʰ]","[k̚]","low"],
   ["0307" ,"ง","ง งู","ngo ngu","snake","ng","ng","[ŋ]","[ŋ]","low"],
   ["0108" ,"จ","จ จาน","cho chan","plate","ch","t","[tɕ]","[t̚]","mid"],
   ["0209" ,"ฉ","ฉ ฉิ่ง","cho ching","cymbals","ch"," –","[tɕʰ]","–","high"],
   ["0310" ,"ช","ช ช้าง","cho chang","elephant","ch","t","[tɕʰ]","[t̚]","low"],
   ["0311" ,"ซ","ซ โซ่","so so","chain","s","t","[s]","[t̚]","low"],
   ["0312" ,"ฌ","ฌ เฌอ","cho choe","tree","ch"," –","[tɕʰ]","–","low"],
   ["0313" ,"ญ[a]","ญ หญิง","yo ying","woman","y","n","[j]","[n]","low"],
   ["0114" ,"ฎ","ฎ ชฎา","do cha-da","headdress","d","t","[d]","[t̚]","mid"],
   ["0115" ,"ฏ","ฏ ปฏัก","to pa-tak","goad, javelin","t","t","[t]","[t̚]","mid"],
   ["0216" ,"ฐ[b]","ฐ ฐาน","tho than","pedestal","th","t","[tʰ]","[t̚]","high"],
   ["0317" ,"ฑ","ฑ มณโฑ","tho montho","Montho, character from Ramayana","th or d","[tʰ] or [d]","[t̚]","low"],
   ["0318" ,"ฒ","ฒ ผู้เฒ่า","tho phu-thao","elder","th","t","[tʰ]","[t̚]","low"],
   ["0319" ,"ณ","ณ เณร","no nen","samanera","n","n","[n]","[n]","low"],
   ["0120" ,"ด","ด เด็ก","do dek","child","d","t","[d]","[t̚]","mid"],
   ["0121" ,"ต","ต เต่า","to tao","turtle","t","t","[t]","[t̚]","mid"],
   ["0222" ,"ถ","ถ ถุง","tho thung","sack","th","t","[tʰ]","[t̚]","high"],
   ["0323" ,"ท","ท ทหาร","tho thahan","soldier","th","t","[tʰ]","[t̚]","low"],
   ["0324" ,"ธ","ธ ธง","tho thong","flag","th","t","[tʰ]","[t̚]","low"],
   ["0325" ,"น","น หนู","no nu","mouse","n","n","[n]","[n]","low"],
   ["0126" ,"บ","บ ใบไม้","bo baimai","leaf","b","p","[b]","[p̚]","mid"],
   ["0127" ,"ป","ป ปลา","po pla","fish","p","p","[p]","[p̚]","mid"],
   ["0228" ,"ผ","ผ ผึ้ง","pho phueng","bee","ph"," –","[pʰ]","–","high"],
   ["0229" ,"ฝ","ฝ ฝา","fo fa","lid","f"," –","[f]","–","high"],
   ["0330" ,"พ","พ พาน","pho phan","phan","ph","p","[pʰ]","[p̚]","low"],
   ["0331" ,"ฟ","ฟ ฟัน","fo fan","teeth","f","p","[f]","[p̚]","low"],
   ["0332" ,"ภ","ภ สำเภา","pho sam-phao","junk","ph","p","[pʰ]","[p̚]","low"],
   ["0333" ,"ม","ม ม้า","mo ma","horse","m","m","[m]","[m]","low"],
   ["0334" ,"ย","ย ยักษ์","yo yak","giant, yaksha","y","n[c]","[j]","[n]","low"],
   ["0335" ,"ร","ร เรือ","ro ruea","boat","r","n","[r]","[n]","low"],
   ["0336" ,"ล","ล ลิง","lo ling","monkey","l","n","[l]","[n]","low"],
   ["0337" ,"ว","ว แหวน","wo waen","ring","w","–[d]","[w]","–","low"],
   ["0238" ,"ศ","ศ ศาลา","so sala","pavilion, sala","s","t","[s]","[t̚]","high"],
   ["0239" ,"ษ","ษ ฤๅษี","so rue-si","hermit","s","t","[s]","[t̚]","high"],
   ["0240" ,"ส","ส เสือ","so suea","tiger","s","t","[s]","[t̚]","high"],
   ["0241" ,"ห","ห หีบ","ho hip","chest, box","h","–","[h]","–","high"],
   ["0342" ,"ฬ","ฬ จุฬา","lo chu-la","kite","l","n","[l]","[n]","low"],
   ["0143" ,"อ","อ อ่าง","o ang","basin","–[e]"," –","[ʔ]","–","mid"],
   ["0344" ,"ฮ","ฮ นกฮูก","ho nok-huk","owl","h"," –","[h]","–","low"],
]
    
var vowelRows = [
    ["101","สระอะ","Sara a","a","a","u","u in 'nut'"],
    ["102","สระอา","Sara a","aː","a","ah, ar, aa","a in 'father'"],
    ["103","สระอิ","Sara i","i","i","","y in 'greedy'"],
    ["104","สระอี","Sara i","iː","i","ee, ii, y","ee in 'see'"],
    ["105","สระอึ","Sara ue","ɯ","ue","eu, u, uh",""],
    ["106","สระอือ","Sara ue","ɯː","ue","eu, u",""],
    ["107","สระอุ","Sara u","u","u","oo","oo in 'look'"],
    ["108","สระอู","Sara u","uː","u","oo, uu","oo in 'too'"],
    ["109","สระเอะ","Sara e","e","e","","e in 'neck'"],
    ["110","สระเอ","Sara e","eː","e","ay, a, ae, ai, ei","a in 'lame'"],
    ["111","สระแอะ","Sara ae","ɛ","ae","aeh, a","a in 'at'"],
    ["112","สระแอ","Sara ae","ɛː","ae","a","a in 'ham'"],
    ["113","สระโอะ","Sara o","o","o","","oa in 'boat'"],
    ["114","สระโอ","Sara o","oː","o","or, oh, ô","o in 'go'"],
    ["115","สระเอาะ","Sara o","ɔ","o","o, aw","o in 'not'"],
    ["116","สระออ","Sara o","ɔː","o","or, aw","aw in 'saw'"],
    ["117","สระเออะ","Sara oe","ɤʔ","oe","eu","e in 'the'"],
    ["118","สระเออ","Sara oe","ɤː,ɤ","oe","er, eu, ur","u in 'burn'"],
    ["119","สระเอียะ","Sara ia","iaʔ","ia","iah, ear, ie","ea in 'ear' with glottal stop"],
    ["120","สระเอีย","Sara ia","ia","ia","ear, ere, ie","ea in 'ear'"],
    ["121","สระเอือะ","Sara uea","ɯaʔ","uea","eua, ua","ure in 'pure'"],
    ["121","สระเอือ","Sara uea","ɯa","uea","eua, ua, ue","ure in 'pure'"],
    ["123","สระอัวะ","Sara ua","uaʔ","ua","","ewe in 'sewer'"],
    ["124","สระอัว","Sara ua","ua","ua","uar","ewe in 'newer'"],
    ["125","สระอำ","Sara am","am","am","um","um in 'sum'"],
    ["125","สระไอ","Sara ai[e]","ai; aj","ai","ay","i in 'hi'"],
    ["127","สระไอ","Sara ai[e]","ai; aj","ai","ay","i in 'hi'"],
    ["128","สระเอา","Sara ao[e]","au; aw","ao","aw, au, ow","ow in 'cow'"],
    ["129","ฤ","Rue","rɯ,ri,rɤː","rue, ri, roe","ru, ri","rew in 'grew', ry in 'angry'"],
    ["130","ฤๅ","Rue","rɯː","rue","ruu",""],
    ["131","ฦ","Lue","lɯ","lue","lu, li","lew in 'blew'"],
    ["132","ฦๅ","Lue","lɯː","lue","lu",""],
]


var sounds = [
    ["201","[b]","boy","บ","",""],
    ["201","[p]","pet","ผ, พ, ภ","บ, ป, พ, ฟ, ภ","stop"],
    ["213","[bp]","spot","ป","",""],
    ["204","[d]","dog","ฎ, ด","",""],
    ["205","[t]","time","ฐ, ฑ, ฒ, ถ, ท, ธ","จ, ช, ซ, ฎ, ฏ, ฐ, ฑ, ฒ, ด, ต, ถ, ท, ธ, ศ, ษ, ส","stop"],
    ["206","[dt]","stop","ฏ, ต","",""],
    ["207","[g]","sky","ก","",""],
    ["208","[k]","kiss","ข, ฃ, ค, ฅ, ฆ","ก, ข, ค, ฆ","stop"],
    ["209","[j]","glass jar","จ","",""],
    ["210","[ch]","charm","ฉ, ช, ฌ","",""],
    ["211","[f]","fog","ฝ, ฟ","",""],
    ["212","[h]","have","ห, ฮ","",""],
    ["213","[l]","love","ล, ฦ, ฬ","",""],
    ["214","[r]","burro (rolled)","ร, ฤ","",""],
    ["215","[m]","man","ม","ม","sonorant"],
    ["216","[n]","nation","ณ, น","ญ, ณ, น, ร, ล, ฬ","sonorant"],
    ["217","[ng]","thing","ง","ง","sonorant"],
    ["218","[s]","sex","ซ, ศ, ษ, ส","",""],
    ["219","[w]","walk","ว","",""],
    ["220","[y]","yes","ญ, ย","",""],
    ["221","[]"," art,  eat","อ","",""],
]
    

    
