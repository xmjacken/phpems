<?php $this->_compileInclude('header'); ?>
<body data-spy="scroll" data-target="#myScrollspy">
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">首页</a></li>
					  <li><a href="index.php?exam-app">考试</a></li>
					  <li><a href="index.php?exam-app-basics"><?php echo $this->tpl_var['data']['currentbasic']['basic']; ?></a></li>
					  <li><a href="index.php?exam-app-history">考试记录</a></li>
					  <li class="active">查看错题</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid" id="questioncontent">
	<div class="row-fluid">
		<div class="main box">
			<div class="col-xs-12" style="padding:0px;position:relative;">
				<div class="scoreArea"><?php echo $this->tpl_var['sessionvars']['examsessionscore']; ?></div>
				<div class="box itembox">
					<h2 class="text-center tt"><?php echo $this->tpl_var['sessionvars']['examsession']; ?></h2>
				</div>
				<?php $wrongnumber = 0; ?>
				<?php $oid = 0; ?>
				<?php $qid = 0;
 foreach($this->tpl_var['questype'] as $key => $quests){ 
 $qid++; ?>
				<?php if($quests){ ?>
				<?php $quest = $key; ?>
				<?php if($this->tpl_var['sessionvars']['examsessionquestion']['questions'][$quest] || $this->tpl_var['sessionvars']['examsessionquestion']['questionrows'][$quest]){ ?>
				<?php $oid++; ?>
				<hr />
				<div class="box itembox">
					<blockquote class="questype"><?php echo $this->tpl_var['ols'][$oid]; ?>、<?php echo $this->tpl_var['questype'][$quest]['questype']; ?><?php echo $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$quest]['describe']; ?></blockquote>
				</div>
				<?php $tid = 0; ?>
	            <?php $qnid = 0;
 foreach($this->tpl_var['sessionvars']['examsessionquestion']['questions'][$quest] as $key => $question){ 
 $qnid++; ?>
	            <?php $tid++; ?>
	            <?php if($this->tpl_var['sessionvars']['examsessionscorelist'][$question['questionid']] != $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$quest]['score']){ ?>
                <?php $wrongnumber++; ?>
				<div class="box itembox paperexamcontent">
					<h4 class="title">
						第<?php echo $tid; ?>题
						<span class="pull-right">
							<a class="btn btn-primary qicon" onclick="javascript:favorquestion('<?php echo $question['questionid']; ?>');"><i class="glyphicon glyphicon-heart-empty"></i></a>
							<a name="question_<?php echo $question['questionid']; ?>">
							<input id="time_<?php echo $question['questionid']; ?>" type="hidden" name="time[<?php echo $question['questionid']; ?>]"/>
						</span>
					</h4>
					<div class="choice">
						</a><?php echo html_entity_decode($this->ev->stripSlashes($question['question'])); ?>
					</div>
					<?php if(!$this->tpl_var['questype'][$quest]['questsort']){ ?>
					<?php if($question['questionselect'] && $this->tpl_var['questype'][$quest]['questchoice'] != 5){ ?>
					<div class="choice">
	                	<?php echo html_entity_decode($this->ev->stripSlashes($question['questionselect'])); ?>
	                </div>
	                <?php } ?>
	                <?php } ?>
					<div class="decidediv" style="position:relative;">
	                	<?php if($this->tpl_var['sessionvars']['examsessionscorelist'][$question['questionid']] && $this->tpl_var['sessionvars']['examsessionscorelist'][$question['questionid']] == $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$quest]['score']){ ?><div class="right"></div><?php } else { ?><div class="wrong"></div><?php } ?>
	                	<table class="table table-hover table-bordered">
            				<tr class="info">
	                			<th colspan="2" style="border-top:0px;">本题得分：<?php echo $this->tpl_var['sessionvars']['examsessionscorelist'][$question['questionid']]; ?>分<?php if($this->tpl_var['sessionvars']['examsessiontimelist'][$question['questionid']]){ ?> &nbsp;&nbsp;做题时间：<?php echo date('Y-m-d H:i:s',$this->tpl_var['sessionvars']['examsessiontimelist'][$question['questionid']]); ?><?php } ?></th>
	                		</tr>
	                		<tr>
	                    		<td width="15%">正确答案：</td>
	                    		<td><?php echo html_entity_decode($this->ev->stripSlashes($question['questionanswer'])); ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>您的答案：</td>
	                        	<td><?php if(is_array($this->tpl_var['sessionvars']['examsessionuseranswer'][$question['questionid']])){ ?><?php echo implode('',$this->tpl_var['sessionvars']['examsessionuseranswer'][$question['questionid']]); ?><?php } else { ?><?php echo html_entity_decode($this->ev->stripSlashes($this->tpl_var['sessionvars']['examsessionuseranswer'][$question['questionid']])); ?><?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>所在章：</td>
	                    		<td><?php $kid = 0;
 foreach($question['questionknowsid'] as $key => $knowsid){ 
 $kid++; ?><?php echo $this->tpl_var['globalsections'][$this->tpl_var['globalknows'][$knowsid['knowsid']]['knowssectionid']]['section']; ?>&nbsp;&nbsp;&nbsp;<?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>知识点：</td>
	                    		<td><?php $kid = 0;
 foreach($question['questionknowsid'] as $key => $knowsid){ 
 $kid++; ?><?php echo $this->tpl_var['globalknows'][$knowsid['knowsid']]['knows']; ?>&nbsp;&nbsp;&nbsp;<?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>答案解析：</td>
	                    		<td><?php echo html_entity_decode($this->ev->stripSlashes($question['questiondescribe'])); ?></td>
	                    	</tr>
	                	</table>
	                </div>
				</div>
				<?php } ?>
				<?php } ?>
				<?php $qrid = 0;
 foreach($this->tpl_var['sessionvars']['examsessionquestion']['questionrows'][$quest] as $key => $questionrow){ 
 $qrid++; ?>
	            <?php $tid++; ?>
				<div class="box itembox paperexamcontent">
					<h4 class="title">第<?php echo $tid; ?>题</h4>
					<div class="choice">
						<?php echo html_entity_decode($this->ev->stripSlashes($questionrow['qrquestion'])); ?>
					</div>
					<?php $did = 0;
 foreach($questionrow['data'] as $key => $data){ 
 $did++; ?>
	                <?php $qcid++; ?>
	                <?php if($this->tpl_var['sessionvars']['examsessionscorelist'][$data['questionid']] != $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$quest]['score']){ ?>
                	<?php $wrongnumber++; ?>
	                <blockquote style="background:#FFFFFF;border-right:1px solid #CCCCCC;border-top:1px solid #CCCCCC;border-bottom:1px solid #CCCCCC;">
					<h4 class="title">
						第<?php echo $did; ?>题
						<span class="pull-right">
							<a class="btn btn-primary qicon" onclick="javascript:favorquestion('<?php echo $data['questionid']; ?>');"><i class="glyphicon glyphicon-heart-empty"></i></a>
							<a name="question_<?php echo $data['questionid']; ?>"></a>
							<input id="time_<?php echo $data['questionid']; ?>" type="hidden" name="time[<?php echo $data['questionid']; ?>]"/>
						</span>
					</h4>
					<div class="choice">
						<?php echo html_entity_decode($this->ev->stripSlashes($data['question'])); ?>
					</div>
					<?php if(!$this->tpl_var['questype'][$quest]['questsort']){ ?>
					<?php if($data['questionselect'] && $this->tpl_var['questype'][$quest]['questchoice'] != 5){ ?>
					<div class="choice">
	                	<?php echo html_entity_decode($this->ev->stripSlashes($data['questionselect'])); ?>
	                </div>
	                <?php } ?>
	                <?php } ?>
					<div class="decidediv" style="position:relative;">
	                	<?php if($this->tpl_var['sessionvars']['examsessionscorelist'][$data['questionid']] && $this->tpl_var['sessionvars']['examsessionscorelist'][$data['questionid']] == $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$quest]['score']){ ?><div class="right"></div><?php } else { ?><div class="wrong"></div><?php } ?>
	                	<table class="table table-hover table-bordered">
            				<tr class="info">
	                			<th colspan="2" style="border-top:0px;">本题得分：<?php echo $this->tpl_var['sessionvars']['examsessionscorelist'][$data['questionid']]; ?>分<?php if($this->tpl_var['sessionvars']['examsessiontimelist'][$data['questionid']]){ ?> &nbsp;&nbsp;做题时间：<?php echo date('Y-m-d H:i:s',$this->tpl_var['sessionvars']['examsessiontimelist'][$data['questionid']]); ?><?php } ?></th>
	                		</tr>
	                		<tr>
	                    		<td width="15%">正确答案：</td>
	                    		<td><?php echo html_entity_decode($this->ev->stripSlashes($data['questionanswer'])); ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>您的答案：</td>
	                        	<td><?php if(is_array($this->tpl_var['sessionvars']['examsessionuseranswer'][$data['questionid']])){ ?><?php echo implode('',$this->tpl_var['sessionvars']['examsessionuseranswer'][$data['questionid']]); ?><?php } else { ?><?php echo html_entity_decode($this->ev->stripSlashes($this->tpl_var['sessionvars']['examsessionuseranswer'][$data['questionid']])); ?><?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>所在章：</td>
	                    		<td><?php $kid = 0;
 foreach($questionrow['qrknowsid'] as $key => $knowsid){ 
 $kid++; ?><?php echo $this->tpl_var['globalsections'][$this->tpl_var['globalknows'][$knowsid['knowsid']]['knowssectionid']]['section']; ?>&nbsp;&nbsp;&nbsp;<?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>知识点：</td>
	                    		<td><?php $kid = 0;
 foreach($questionrow['qrknowsid'] as $key => $knowsid){ 
 $kid++; ?><?php echo $this->tpl_var['globalknows'][$knowsid['knowsid']]['knows']; ?>&nbsp;&nbsp;&nbsp;<?php } ?></td>
	                    	</tr>
	                    	<tr>
	                    		<td>答案解析：</td>
	                    		<td><?php echo html_entity_decode($this->ev->stripSlashes($data['questiondescribe'])); ?></td>
	                    	</tr>
	                	</table>
	                </div>
					</blockquote>
					<?php } ?>
					<?php } ?>
				</div>
				<?php } ?>
				<?php } ?>
				<?php } ?>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>