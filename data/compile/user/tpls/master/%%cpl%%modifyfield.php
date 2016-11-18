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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master-module">用户模型</a></li>
							<li><a href="index.php?user-master-module-fields&moduleid=<?php echo $this->tpl_var['module']['moduleid']; ?>">字段管理</a></li>
							<li class="active">编辑<?php if($this->tpl_var['fieldpublic']){ ?>公共<?php } else { ?>模型<?php } ?>字段</li>
						</ol>
					</div>
				</div>
				<div class="box itembox">
					<h4 class="title" style="padding:10px;">
						<?php echo $this->tpl_var['field']['fieldtitle']; ?>[<?php echo $this->tpl_var['field']['field']; ?>]
					</h4>
					<div id="tabs-694325" class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-344373" data-toggle="tab">样式编辑</a>
							</li>
							<li>
								<a href="#panel-788842" data-toggle="tab">数据编辑</a>
							</li>
							<a class="pull-right btn btn-primary" href="index.php?user-master-module-fields&moduleid=<?php echo $this->tpl_var['module']['moduleid']; ?>">字段列表</a>
						</ul>
						<div class="tab-content">
							<div id="panel-344373" class="tab-pane active">
								<form action="index.php?user-master-module-modifyfield" method="post" class="form-horizontal">
									<div class="form-group">
										<label class="control-label col-sm-2"></label>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">字段别名：</label>
										<div class="col-sm-4">
											<input class="form-control" type="text" size="40" name="args[fieldtitle]" needle="needle" datatype="userName" id="fieldtitle" msg="您必须填写字段别名，字段别名必须为中英文字符或数字" value="<?php echo $this->tpl_var['field']['fieldtitle']; ?>"/>
										</div>
									</div>
									<div class="form-group">
										<label for="fieldhtmltype" class="control-label col-sm-2">HTML类型：</label>
										<div class="col-sm-4">
											<select class="form-control" name="args[fieldhtmltype]" id="fieldhtmltype">
										  		<option value="text"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'text'){ ?> selected<?php } ?>>文本域(text)</option>
										  		<option value="htmltime"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'htmltime'){ ?> selected<?php } ?>>时间文本域(htmltime)</option>
										  		<option value="password"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'password'){ ?> selected<?php } ?>>密码域(password)</option>
										  		<option value="hidden"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'hidden'){ ?> selected<?php } ?>>隐藏域(hidden)</option>
										  		<option value="select"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'select'){ ?> selected<?php } ?>>下拉菜单/选择框(select)</option>
										  		<option value="radio"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'radio'){ ?> selected<?php } ?>>单选框(radio)</option>
										  		<option value="checkbox"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'checkbox'){ ?> selected<?php } ?>>复选框(checkbox)</option>
										  		<option value="checkboxarray"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'checkboxarray'){ ?> selected<?php } ?>>复选框组(checkboxarray)</option>
										  		<option value="textarea"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'textarea'){ ?> selected<?php } ?>>文本区域(textarea)</option>
										  		<option value="editor"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'editor'){ ?> selected<?php } ?>>编辑器(editor)</option>
										  		<option value="thumb"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'thumb'){ ?> selected<?php } ?>>缩略图上传(thumb)</option>
										  		<option value="picture"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'picture'){ ?> selected<?php } ?>>组图上传(picture)</option>
										  		<option value="auto"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'auto'){ ?> selected<?php } ?>>自定义(auto)</option>
										  		<option value="videotext"<?php if($this->tpl_var['field']['fieldhtmltype'] == 'videotext'){ ?> selected<?php } ?>>上传(videotext)</option>
										  	</select>
									  	</div>
									</div>
									<div class="form-group">
							        	<label class="control-label col-sm-2">HTML属性：</label>
			      						<div class="col-sm-9">
				      						<textarea class="form-control" rows="7" cols="4" name="args[fieldhtmlproperty]" id="fieldhtmlproperty"><?php echo $this->tpl_var['field']['fieldhtmlproperty']; ?></textarea>
											<span class="help-block">每行一个，等号隔开，如：style=width:100px;</span>
										</div>
							        </div>
							        <div class="form-group">
								        <label class="control-label col-sm-2">可选值列表：</label>
								        <div class="col-sm-9">
									        <textarea class="form-control" rows="7" cols="4" name="args[fieldvalues]" id="fieldvalues"><?php echo $this->tpl_var['field']['fieldvalues']; ?></textarea>
									        <span class="help-block">每行一个，等号隔开，如：属性=值;</span>
								        </div>
							        </div>
							        <div class="form-group">
								        <label class="control-label col-sm-2">默认值：</label>
								        <div class="col-sm-3">
								        	<input class="form-control" type="text" size="40" name="args[fielddefault]" class="form-control" id="fielddefault" value="<?php echo $this->tpl_var['field']['fielddefault']; ?>"/>
							        	</div>
							        </div>
							        <div class="form-group">
								        <label class="control-label col-sm-2">禁止修改：</label>
							          	<div class="col-sm-9">
								          	<label class="checkbox-inline">
								          		<input type="checkbox" name="args[fieldforbidactors][]" value="-1" <?php if(strpos($this->tpl_var['field']['fieldforbidactors'],',-1,') !== false){ ?>checked="true"<?php } ?>/> 本用户
								          	</label>
								          	<?php $gid = 0;
 foreach($this->tpl_var['groups'] as $key => $group){ 
 $gid++; ?>
								          	<?php if($group['groupmoduleid'] == 1){ ?>
								          	<label class="checkbox-inline">
								          		<input type="checkbox" name="args[fieldforbidactors][]" value="<?php echo $group['groupid']; ?>" <?php if(strpos($this->tpl_var['field']['fieldforbidactors'],','.$group['groupid'].',') !== false){ ?>checked="true"<?php } ?>/> <?php echo $group['groupname']; ?>
								          	</label>
								          	<?php } ?>
								          	<?php } ?>
							          	</div>
							        </div>
							        <div class="form-group">
								        <label class="control-label col-sm-2">字段描述：</label>
								        <div class="col-sm-9">
								        	<textarea class="form-control" rows="7" cols="4" name="args[fielddescribe]" id="fielddescribe"><?php echo $this->tpl_var['field']['fielddescribe']; ?></textarea>
							        	</div>
							        </div>
							        <div class="form-group">
								        <label class="control-label col-sm-2">系统字段：</label>
							          	<div class="col-sm-9">
											<label class="radio-inline">
								          		<input type="radio" class="input-text" name="args[fieldsystem]" value="1"<?php if($this->tpl_var['field']['fieldsystem']){ ?> checked<?php } ?>/> 作为系统字段
								          	</label>
								          	<label class="radio-inline">
								          		<input type="radio" class="input-text" name="args[fieldsystem]" value="0"<?php if(!$this->tpl_var['field']['fieldsystem']){ ?> checked<?php } ?>/> 作为普通字段
								          	</label>
								          	<span class="help-block">系统字段不能被删除</span>
								       </div>
								    </div>
							        <div class="form-group">
							        	<label class="control-label col-sm-2"></label>
							            <div class="col-sm-9">
								            <button class="btn btn-primary" type="submit">提交</button>
								            <input type="hidden" name="moduleid" value="<?php echo $this->tpl_var['field']['fieldmoduleid']; ?>"/>
								            <input type="hidden" name="fieldid" value="<?php echo $this->tpl_var['fieldid']; ?>"/>
								            <input type="hidden" name="modifyfieldhtml" value="1"/>
							            </div>
							        </div>
								</form>
							</div>
							<div id="panel-788842" class="tab-pane">
								<form action="index.php?user-master-module-modifyfield" method="post" class="form-horizontal">
									<div class="form-group">
										<label class="control-label col-sm-2"></label>
									</div>
									<div class="form-group">
								        <label class="control-label col-sm-2">字段类型：</label>
										<div class="col-sm-3">
											<select class="form-control" id="fieldtype" name="args[fieldtype]">
												<option value="int"<?php if($this->tpl_var['field']['fieldtype'] == 'int'){ ?> selected<?php } ?>>整型(int/time)</option>
												<option value="varchar"<?php if($this->tpl_var['field']['fieldtype'] == 'varchar'){ ?> selected<?php } ?>>0~255字符串型(varchar)</option>
												<option value="decimal"<?php if($this->tpl_var['field']['fieldtype'] == 'decimal'){ ?> selected<?php } ?>>浮点型(decimal)</option>
												<option value="text"<?php if($this->tpl_var['field']['fieldtype'] == 'text'){ ?> selected<?php } ?>>长文字型(text)</option>
											</select>
										</div>
									</div>
									<div class="form-group">
								        <label class="control-label col-sm-2">字段长度：</label>
										<div class="col-sm-3">
											<input type="text" size="16" name="args[fieldlength]" class="form-control" id="fieldlength" value="<?php echo $this->tpl_var['field']['fieldlength']; ?>"/>
										</div>
									</div>
									<div class="form-group">
								        <label class="control-label col-sm-2">索引类型：</label>
										<div class="col-sm-3">
											<select class="form-control" name="args[fieldindextype]" id="fieldindextype">
										  		<option value="0">无(NULL)</option>
										  		<option value="INDEX"<?php if($this->tpl_var['field']['fieldindextype'] == 'INDEX'){ ?> selected<?php } ?>>普通索引(INDEX)</option>
										  		<option value="UNIQUE"<?php if($this->tpl_var['field']['fieldindextype'] == 'UNIQUE'){ ?> selected<?php } ?>>不重复索引(UNIQUE)</option>
										  		<option value="FULLTEXT"<?php if($this->tpl_var['field']['fieldindextype'] == 'FULLTEXT'){ ?> selected<?php } ?>>全文索引(FULLTEXT)</option>
										  	</select>
									  	</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2"></label>
										<div class="col-sm-9">
											<button class="btn btn-primary" type="submit">提交</button>
								            <input type="hidden" name="moduleid" value="<?php echo $this->tpl_var['field']['fieldmoduleid']; ?>"/>
								            <input type="hidden" name="fieldid" value="<?php echo $this->tpl_var['fieldid']; ?>"/>
								            <input type="hidden" name="modifyfielddata" value="1"/>
							            </div>
							        </div>
								</form>
							</div>
						</div>
					</div>
				</div>
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