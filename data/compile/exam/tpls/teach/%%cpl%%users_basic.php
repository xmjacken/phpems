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
							<li class="active">课程成绩</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						课程成绩
					</h4>
					<form action="index.php?exam-teach-users" method="post">
						<table class="table form-inline">
							<thead>
				                <tr>
							        <th colspan="2">搜索</th>
							        <th></th>
							        <th></th>
							        <th></th>
							        <th></th>
				                </tr>
				            </thead>
							<tr>
								<td>
									考场ID：
								</td>
								<td>
									<input name="search[basicid]" class="form-control" type="text" class="number" value="<?php echo $this->tpl_var['search']['basicid']; ?>"/>
								</td>
								<td>
									关键字：
								</td>
								<td>
									<input class="form-control" name="search[keyword]" type="text" value="<?php echo $this->tpl_var['search']['keyword']; ?>"/>
								</td>
								<td>
									地区：
								</td>
					        	<td>
					        		<select name="search[basicareaid]" class="form-control">
						        		<option value="0">选择地区</option>
								  		<?php $aid = 0;
 foreach($this->tpl_var['areas'] as $key => $area){ 
 $aid++; ?>
								  		<option value="<?php echo $area['areaid']; ?>"<?php if($area['areaid'] == $this->tpl_var['search']['basicareaid']){ ?> selected<?php } ?>><?php echo $area['area']; ?></option>
								  		<?php } ?>
							  		</select>
					        	</td>
					        </tr>
					        <tr>
					        	<td>
									API标识：
								</td>
								<td>
									<input class="form-control" name="search[basicapi]" type="text" value="<?php echo $this->tpl_var['search']['basicapi']; ?>"/>
								</td>
								<td>
									科目：
								</td>
								<td>
					        		<select name="search[basicsubjectid]" class="form-control">
						        		<option value="0">选择科目</option>
								  		<?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
								  		<option value="<?php echo $subject['subjectid']; ?>"<?php if($subject['subjectid'] == $this->tpl_var['search']['basicsubjectid']){ ?> selected<?php } ?>><?php echo $subject['subject']; ?></option>
								  		<?php } ?>
							  		</select>
					        	</td>
								<td>
									<button class="btn btn-primary" type="submit">提交</button>
								</td>
								<td></td>
							</tr>
						</table>
						<div class="input">
							<input type="hidden" value="1" name="search[argsmodel]" />
						</div>
					</form>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th><input type="checkbox" class="checkall"/></th>
			                    <th>考场ID</th>
						        <th>考场名称</th>
						        <th>考场地区</th>
						        <th>考试科目</th>
						        <th>操作</th>
			                </tr>
			            </thead>
			            <tbody>
			                <?php $bid = 0;
 foreach($this->tpl_var['basics']['data'] as $key => $basic){ 
 $bid++; ?>
					        <tr>
								<td>
									<input type="checkbox" name="delids[<?php echo $basic['basicid']; ?>]" value="1"/>
								</td>
								<td>
									<?php echo $basic['basicid']; ?>
								</td>
								<td>
									<?php echo $basic['basic']; ?>
								</td>
								<td>
									<?php echo $this->tpl_var['areas'][$basic['basicareaid']]['area']; ?>
								</td>
								<td>
									<?php echo $this->tpl_var['subjects'][$basic['basicsubjectid']]['subject']; ?>
								</td>
								<td>
									<div class="btn-group">
										<a class="btn" href="index.php?exam-teach-users-scorelist&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="成绩统计"><em class="glyphicon glyphicon-subscript"></em></a>
										<a class="btn" href="index.php?exam-teach-users-exams&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="主观题批改"><em class="glyphicon glyphicon-saved"></em></a>
									</div>
								</td>
					        </tr>
					        <?php } ?>
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
						<?php echo $this->tpl_var['basics']['pages']; ?>
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