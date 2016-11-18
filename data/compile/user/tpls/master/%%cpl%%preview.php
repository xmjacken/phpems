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
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master-module">用户模型</a></li>
							<li class="active">模型预览</li>
						</ol>
					</div>
				</div>
				<div class="box itembox">
					<h4 class="title" style="padding:10px;">
						<?php echo $this->tpl_var['module']['modulename']; ?>
						<span class="pull-right">
							<a class="btn btn-primary dropdown-toggle" href="#" data-toggle="dropdown">模型列表<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="index.php?user-master-module">模型列表</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="index.php?user-master-module-fields&moduleid=<?php echo $this->tpl_var['module']['moduleid']; ?>">字段管理</a>
								</li>
							</ul>
						</span>
					</h4>
					<form class="form-horizontal">
						<fieldset>
							<?php $fid = 0;
 foreach($this->tpl_var['forms'] as $key => $form){ 
 $fid++; ?>
							<div class="form-group">
								<label for="<?php echo $form['id']; ?>" class="control-label col-sm-2"><?php echo $form['title']; ?>：</label>
								<div class="col-sm-9">
								<?php echo $form['html']; ?>
								</div>
							</div>
							<?php } ?>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>