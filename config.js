var api = 'http://pool.mangocoin.online:11898';
var donationAddress = "MEpLh1LswBqihtwVB7VuYAQP7E39SYSwVQwFVyAjpGd6fdALVvZk74YTq5jTo4DNnTdkw2wcWCzJ2EtVJ9k9DhioBWQ7GGq";
var blockTargetInterval = 120; // enter the block interval in seconds
var coinUnits = 100000000;  // enter in the amount of atomic units in 1 coin, eg. 100000000 slices = 1 MNG
var totalSupply =  2000000000000000000; // enter the total supply in atomic units
var symbol = 'mng'; // enter the coin's ticker
var refreshDelay = 30000;

// pools stats by MainCoins
var networkStat = {
 "mng": [
	["pool.mangocoin.online", "http://pool.mangocoin.online:3107"],
	["webmng.semipool.com", "https://webmng.semipool.com/api"],
	["mng.miningpool.fun", "https://mng.miningpool.fun:8111"],
	["fastpool.xyz", "https://fastpool.xyz:10088"],
	["mn.pool-pay.com", "http://mng.pool-pay.com:8727"],
	["mng.cryptonote.club", "https://mng.cryptonote.club:8199"]
 ]
};

var networkStat2 = {
    "mng": [
	[""]
 ]
};
