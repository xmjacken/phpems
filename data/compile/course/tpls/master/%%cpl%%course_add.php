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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master-course&page=<?php echo $this->tpl_var['page']; ?>">课程管理</a></li>
							<li class="active">添加课程</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						添加课程
						<a class="btn btn-primary pull-right" href="index.php?<?php echo $this->tpl_var['_app']; ?>-master-course&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">课程管理</a>
					</h4>
					<form action="index.php?course-master-course-add" method="post" class="form-horizontal">
						<div class="form-group">
				            <label for="contenttitle" class="control-label col-sm-2">课程标题：</label>
				            <div class="col-sm-9">
							    <input class="form-control" type="text" id="contenttitle" name="args[cstitle]" needle="needle" msg="您必须输入标题">
					        </div>
				        </div>
				        <div class="form-group">
				            <label for="block" class="control-label col-sm-2">缩略图：</label>
				            <div class="col-sm-9">
					            <script type="text/template" id="pe-template-csthumb">
						    		<div class="qq-uploader-selector" style="width:30%" qq-drop-area-text="可将图片拖拽至此处上传" style="clear:both;">
						            	<div class="qq-upload-button-selector" style="clear:both;">
						                	<ul class="qq-upload-list-selector list-unstyled" aria-live="polite" aria-relevant="additions removals" style="clear:both;">
								                <li class="text-center">
								                    <div class="thumbnail">
														<img class="qq-thumbnail-selector" alt="点击上传新图片">
														<input type="hidden" class="qq-edit-filename-selector" name="args[csthumb]" tabindex="0">
													</div>
								                </li>
								            </ul>
								            <ul class="qq-upload-list-selector list-unstyled" aria-live="polite" aria-relevant="additions removals" style="clear:both;">
									            <li class="text-center">
									                <div class="thumbnail">
														<img class="qq-thumbnail-selector" src="app/core/styles/images/noimage.gif" alt="点击上传新图片">
														<input type="hidden" class="qq-edit-filename-selector" name="args[csthumb]" tabindex="0" value="app/core/styles/images/noimage.gif">
						                			</div>
									            </li>
									        </ul>
						                </div>
						            </div>
						        </script>
						        <div class="fineuploader" attr-type="thumb" attr-template="pe-template-csthumb"></div>
							</div>
				        </div>
				        <div class="form-group">
				            <label for="contentcatid" class="control-label col-sm-2">分类：</label>
				        	<div class="col-sm-9 form-inline">
							    <select id="cscatid" msg="您必须选择一个分类" needle="needle" class="autocombox form-control" name="args[cscatid]" refUrl="index.php?course-master-category-ajax-getchildcategory&catid={value}">
					            	<option value="">选择一级分类</option>
					            	<?php $cid = 0;
 foreach($this->tpl_var['parentcat'] as $key => $cat){ 
 $cid++; ?>
					            	<option value="<?php echo $cat['catid']; ?>"><?php echo $cat['catname']; ?></option>
					            	<?php } ?>
					            </select>
					        </div>
				        </div>
				        <div class="form-group">
				            <label for="contentcatid" class="control-label col-sm-2">科目：</label>
				        	<div class="col-sm-9 form-inline">
							    <select id="cscatid" msg="请选择科目" needle="needle" target="csbasicid" class="combox form-control" name="args[cssubjectid]" refUrl="index.php?course-master-index-getajaxbasiclist&subjectid={value}">
					            	<option value="">请选择科目</option>
					            	<?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
					            	<option value="<?php echo $subject['subjectid']; ?>"><?php echo $subject['subject']; ?></option>
					            	<?php } ?>
					            </select>
					            <a href="index.php?exam-master-basic-subject" class="btn btn-primary" target="_blank">编辑科目</a>
					        </div>
				        </div>
				        <div class="form-group">
				            <label for="contentcatid" class="control-label col-sm-2">对应考场：</label>
				        	<div class="col-sm-9 form-inline">
							    <select id="csbasicid" msg="您必须选择一个考场" needle="needle" class="form-control" name="args[csbasicid]">
					            	<option value="">请选择科目后再选择考场</option>
					            </select>
					        </div>
				        </div>
				        <div class="form-group">
				            <label for="contentdescribe" class="control-label col-sm-2">简介：</label>
				            <div class="col-sm-10">
							    <textarea id="contentdescribe" class="ckeditor" name="args[csdescribe]" rows="7" cols="4"></textarea>
					        </div>
				        </div>
				        <div class="form-group">
				            <label for="contentdescribe" class="control-label col-sm-2"></label>
				            <div class="col-sm-9">
					            <button class="btn btn-primary" type="submit">提交</button>
					            <input type="hidden" name="submit" value="1">
					        </div>
				        </div>
					</form>
				</div>
			</div>
<?php if(!$this->tpl_var['userhash']){ ?>
		</div>
	</div>
</div>
</body>
</html>
<?php } ?>