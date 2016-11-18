<?php if(!$this->tpl_var['userhash']){ ?>
<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				<?php $this->_compileInclude('menu'); ?>
			</div>
			<div class="col-xs-10" id="datacontent">
<?php } ?>
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-users">课程成绩</a></li>
							<li class="active">成绩分析</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						试题正确率分析
						<a class="pull-right btn btn-primary" href="index.php?exam-teach-users-stats&basicid=<?php echo $this->tpl_var['basicid']; ?><?php echo $this->tpl_var['u']; ?>&type=1">知识点正确率分析</a></a>
					</h4>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
			                    <th width="50%">试题名称</th>
			                    <th>A</th>
			                    <th>B</th>
			                    <th>C</th>
			                    <th>D</th>
			                    <th>正确次数</th>
			                    <th>出现次数</th>
						        <th>正确率</th>
			                </tr>
			            </thead>
			            <tbody>
		                    <?php $sid = 0;
 foreach($this->tpl_var['stats']['data'] as $key => $stat){ 
 $sid++; ?>
					        <tr>
								<td>
									<?php echo $stat['id']; ?>
								</td>
								<td>
									<?php echo html_entity_decode($this->ev->stripSlashes($stat['title'])); ?>
								</td>
								<td>
									<?php echo round(100 * $stat['A']/$stat['number'],2); ?>%
								</td>
								<td>
									<?php echo round(100 * $stat['B']/$stat['number'],2); ?>%
								</td>
								<td>
									<?php echo round(100 * $stat['C']/$stat['number'],2); ?>%
								</td>
								<td>
									<?php echo round(100 * $stat['D']/$stat['number'],2); ?>%
								</td>
								<td>
									<?php echo intval($stat['right']); ?>
								</td>
								<td>
									<?php echo $stat['number']; ?>
								</td>
								<td>
									<?php echo round(100 * $stat['right']/$stat['number'],2); ?>%
								</td>
							</tr>
					        <?php } ?>
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
			            <?php echo $this->tpl_var['stats']['pages']; ?>
			        </ul>
				</div>
			</div>
<?php if(!$this->tpl_var['userhash']){ ?>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>
<?php } ?>