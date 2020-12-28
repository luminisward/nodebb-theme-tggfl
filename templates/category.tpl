<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="category <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<div class="clearfix">
			<a href="{url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>

		</div>

		<div class="category-topics-list">

			<div class="category-title">
				<span class="fa fa-location-arrow bread-arrow">
					<!-- IMPORT partials/breadcrumbs.tpl -->
				</span>
			  <span class="category-name">{name}</span>
			<!-- IF !feeds:disableRSS -->
			<!-- IF rssFeedUrl --><a target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss-square"></i></a><!-- ENDIF rssFeedUrl --><!-- ENDIF !feeds:disableRSS -->
			
				<!-- IF privileges.topics:create -->
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-post" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				<!-- ELSE -->
					<!-- IF !loggedIn -->
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-post">[[category:guest-login-post]]</a>
					<!-- ENDIF !loggedIn -->
				<!-- ENDIF privileges.topics:create -->

				<span class="pull-right" component="category/controls">
					<!-- IMPORT partials/category/watch.tpl -->
					<!-- IMPORT partials/category/sort.tpl -->
					<!-- IMPORT partials/category/tools.tpl -->
				</span>
			</div>

			<!-- IF !topics.length -->
			<!-- IF privileges.topics:create -->
			<div class="alert alert-warning" id="category-no-topics">
				[[category:no_topics]]
			</div>
			<!-- ENDIF privileges.topics:create -->
			<!-- ENDIF !topics.length -->

			<!-- IMPORT partials/topics_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
