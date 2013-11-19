<?php echo $header; ?>
	
	<?php echo $content_top; ?>

	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>

	<?php 
	
	if ($column_left || $column_right) { 
		$main = "span9"; 
		if($column_left) $main.=" sideleft"; else $main.= " sideright";
	}
	else { 	$main = "span12"; } 

	?>

	<div class="row-fluid">

		<?php echo $column_left; ?>

		<section id="maincontent" class="<?php echo $main; ?>" role="main">

			<div class="mainborder">

				<?php if ($column_left || $column_right) { ?>
					<div id="toggle_sidebar"></div>
				<?php } ?>
				
				<header class="heading">
					<h1 class="page-header"><?php echo $heading_title; ?></h1>
				</header>

				<?php if ($returns) { ?>

					<div class="return-list">

						<?php foreach ($returns as $return) { ?>

							<div class="contentset">
								<a href="<?php echo $return['href']; ?>"><?php echo $text_return_id; ?> <?php echo $return['return_id']; ?></a>
							</div>

							<div class="row-fluid">

								<div class="span3">
									
									<b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?> <br>
									<small><?php echo $return['date_added']; ?></small>
								</div>

								<div class="span3">
									<b><?php echo $text_status; ?></b> <?php echo $return['status']; ?>
								</div>

								<div class="span4">
									<b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?>
								</div>

								<div class="span2 list-actions">
									<a href="<?php echo $return['href']; ?>" class="button button-mini" title="<?php echo $button_view; ?>"><?php echo $button_view; ?></a>
								</div>

							</div>

						<?php } ?>

					</div>
				
					<div class="pagination"><?php echo $pagination; ?></div>

					<div class="form-actions">
						<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
					</div>

				<?php } else { ?>
				
					<div class="content empty">
						<p><?php echo $text_empty; ?></p>
						<div class="form-actions">
							<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
						</div>
					</div>

				<?php } ?>

			</div>	

		</section> <!-- #maincontent -->

		<?php echo $column_right; ?>

	</div> <!-- .row -->

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?>