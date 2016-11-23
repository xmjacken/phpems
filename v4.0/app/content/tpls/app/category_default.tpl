{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
						<li><a href="index.php">首页</a></li>
						<li><a href="index.php?content">新闻</a></li>
					  	{x2;tree:$catbread,cb,cbid}
						<li><a href="index.php?content-app-category&catid={x2;v:cb['catid']}">{x2;v:cb['catname']}</a> <span class="divider">/</span></li>
						{x2;endtree}
						<li class="active">{x2;$cat['catname']}</li>
					</ol>
				</div>
			</div>
			<div class="box itembox hide" style="padding-top:20px;">
				<ul class="list-unstyled list-inline">
					<li class=""><a href="" class="btn btn-primary">全部</a></li>
					<li class=""><a href="" class="btn">厨卫( 2 )</a></li>
					<li><a href="" class="btn">瓷砖( 1 )</a></li>
					<li><a href="" class="btn">板材( 2 )</a></li>
					<li><a href="" class="btn">管材( 2 )</a></li>
				</ul>
			</div>
			{x2;tree:$contents['data'],content,cid}
			<div class="box itembox" style="padding-top:20px;">
				<div class="col-xs-3">
					<a href="index.php?content-app-content&contentid={x2;v:content['contentid']}" class="thumbnail pull-left">
						<img src="{x2;v:content['contentthumb']}" alt="" width="100%">
					</a>
				</div>
				<div class="col-xs-9">
					<a href="index.php?content-app-content&contentid={x2;v:content['contentid']}"><h4 class="title">{x2;v:content['contenttitle']}</h4></a>
					<p>{x2;v:content['contentdescribe']}</p>
					<hr/>
					<p>
						<span class="pull-right">
							<a href=""><span class="glyphicon glyphicon-time"></span> <span>{x2;date:v:content['contentinputtime'],'Y-m-d H:i:s'}</span></a>&nbsp;&nbsp;
							<a href=""><span class="glyphicon glyphicon-heart"></span> <span>1026</span></a>
						</span>
					</p>
				</div>
			</div>
			{x2;endtree}
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>