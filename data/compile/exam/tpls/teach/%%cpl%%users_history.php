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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-users">课程成绩</a> <span class="divider">/</span></li>
							<li class="active">教师评卷</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						教师评卷
					</h4>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
						        <th>考试名称</th>
						        <th>考试时间</th>
						        <th>组卷类型</th>
						        <th>操作</th>
			                </tr>
			            </thead>
			            <tbody>
		                    <?php $eid = 0;
 foreach($this->tpl_var['exams']['data'] as $key => $exam){ 
 $eid++; ?>
					        <tr>
								<td>
									<?php echo $exam['ehid']; ?>
								</td>
								<td>
									<?php echo $exam['ehexam']; ?>
								</td>
								<td>
									<?php echo date('Y-m-d',$exam['ehstarttime']); ?>
								</td>
								<td>
									<?php if($exam['ehtype'] == 1){ ?>随机组卷<?php } else { ?>手工组卷<?php } ?>
								</td>
								<td>
									<div class="btn-group">
			                    		<a class="btn" href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-users-score&page=<?php echo $this->tpl_var['page']; ?>&ehid=<?php echo $exam['ehid']; ?><?php echo $this->tpl_var['u']; ?>" title="评卷"><em class="glyphicon glyphicon-check"></em></a>
									</div>
								</td>
					        </tr>
					        <?php } ?>
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
			            <?php echo $this->tpl_var['exams']['pages']; ?>
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