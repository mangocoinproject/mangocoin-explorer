<h2><i class="fa fa-code" aria-hidden="true"></i> API <small id="paymend_id" style="word-break: break-all;"></small></h2>

<div class="container">
		<div class="row">
          <div class="col-lg-12">
                <h4>Supported APIs</h4>
                <ul>
									<li> <strong>Network Hash Rate: </strong><span id="hashrate"></span></li>
									<li> <strong>Blockchain Height: </strong><span id="height"></span></li>
									<li> <strong>Block Reward: </strong><span id="reward"></span></li>
									<li> <strong>Circulating Supply: </strong><span id="supply"></span></li>
                </ul>
		     </div>
		</div>
</div>

<?php
require dirname(__FILE__) . '/../util.php';
$config = (require dirname(__FILE__) . '/../../config.php');
$info = fetch_getinfo($config['api']);
$difficulty = $info['difficulty'];
$hashrate = round($difficulty / $config['blockTargetInterval']);
print_r($hashrate);

require dirname(__FILE__) . '/../util.php';
$config = (require dirname(__FILE__) . '/../../config.php');
$info = fetch_getinfo($config['api']);
print_r($info['last_known_block_index']);

require dirname(__FILE__) . '/../util.php';
$config = (require dirname(__FILE__) . '/../../config.php');
$blockHeader = url_get_contents_post($config['api'], 'getlastblockheader', '" "');
$rewardRaw = $blockHeader['result']['block_header']['reward'];
$reward = number_format($rewardRaw / 100, 2, ".", "");
print_r($reward);

require dirname(__FILE__) . '/../util.php';
$config = (require dirname(__FILE__) . '/../../config.php');
$hashData = url_get_contents_post($config['api'], 'getlastblockheader', '""');
$hash = $hashData['result']['block_header']['hash'];
$blockData = url_get_contents_post($config['api'], 'f_block_json', '{"hash":"'.$hash.'"}');
$supplyRaw = $blockData['result']['block']['alreadyGeneratedCoins'];
$supply = number_format($supplyRaw / $config['coinUnits'], 2, ".", "");
print_r($supply);
?>
