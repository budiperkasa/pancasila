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

					<?php if ($success) { ?>
					<div class="success"><?php echo $success; ?></div>
					<?php } ?>
					<?php if ($error_warning) { ?>
					<div class="warning"><?php echo $error_warning; ?></div>
					<?php } ?>

				</header>

				<div class="contentset"><?php echo $text_address_book; ?></div>

				<div id="address-list">

					<?php foreach ($addresses as $result) { ?>

						<div class="row-fluid">

							<div class="span6">
								<address>
									<?php echo $result['address']; ?>
								</address>
							</div>

							<div class="span6 list-actions">
								<a href="<?php echo $result['update']; ?>" class="button button-mini" title="<?php echo $button_edit; ?>"><?php echo $button_edit; ?></a>
								<a href="<?php echo $result['delete']; ?>" class="button button-mini" title="<?php echo $button_delete; ?>"><i class="icon-trash"></i></a>
							</div>
							
						</div>

					<?php } ?>

				</div>

				<div class="form-actions">
					<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
					<a href="<?php echo $insert; ?>" class="button button-inverse"><?php echo $button_new_address; ?></a>
				</div>

			</div>
		
		</section> <!-- #maincontent -->

		<?php echo $column_right; ?>

	</div> <!-- .row -->

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?>