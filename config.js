var api = 'http://pool.mangocoin.online:11898';
var donationAddress = "";
var blockTargetInterval = 120; // enter the block interval in seconds
var coinUnits = 100000000;  // enter in the amount of atomic units in 1 coin, eg. 100 shells = 1 MNG
var totalSupply =  2000000000000000000; // enter the total supply in atomic units
var symbol = 'MNG'; // enter the coin's ticker
var refreshDelay = 30000;

// pools stats by MainCoins
var networkStat = {
 "MNG": [
	["pool.mangocoin.online", "http://pool.mangocoin.online:3107"]
 ]
};

var networkStat2 = {
    "MNG": [
	[""]
 ]
};
