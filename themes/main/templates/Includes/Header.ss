<div class="container vertical-parent" id="header-holder">
	<div class="vertical-align margin-parent-xs">
		<div class="header inlineBlock-parent by-2 bg-white">
			<a href="$BaseHref"><div class="logo l-padding-l">
				<% loop $HeaderFooter %>
				<img src="$Logo.URL" alt="TLI Logo"  width="200px">
				<% end_loop %>
			</div
			></a><div class="menu-holder">
				<div class="menu-items right-align l-padding-r">
					<ul class="l-padding-r">
						<% loop $Menu(1) %>
						<li class=""><a title="$MenuTitle" href="#">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
					<i id="mobile-ham" class="ion-navicon-round"></i>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="side-nav">
	<% loop $Menu(1) %> 
		<a title="$MenuTitle" href="#">
			<div class="side-items"><p>$MenuTitle</p></div>
		</a>
	<% end_loop %>
</div>