<?php echo $header; ?>
<?php echo $content_top; ?>
   <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
   </div>
 <div id="notification"></div>
<?php
if ($column_left || $column_right) {
    $main = "span9";
} else {
    $main = "span12";
}
?>
<div class="row">
<?php echo $column_left; ?>
  <section id="maincontent" class="<?php echo $main; ?> information" role="main">
   <div class="mainborder">
     <?php if ($column_left) { ?>
       <div id="toggle_sidebar"></div>
     <?php } ?> 
   <h1><?php echo $heading_title; ?></h1>
   <div id="blogCatArticles" class="<?php echo $suffix; ?>">
      <?php if ($categories || $catDescription) { ?>
         <div id="blogCategory">
            <?php if ($catDescription) { ?>
               <?php if ($catImage) { ?>
                  <img class="imageFeatured" src="<?php echo $catImage; ?>" alt="<?php echo $heading_title; ?>"/>
               <?php } ?>
               <?php echo $catDescription; ?>
            <?php } ?>
            <?php if ($categories) { ?>
               <h4><?php echo $text_subcategory; ?></h4>
               <ul>
                  <?php foreach ($categories as $category) { ?>
                     <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
               </ul>
            <?php } ?>
         </div>
      <?php } ?>
   
      <?php if ($articles) { ?>
         <?php foreach ($articles as $article) { ?>
            <div class="articleCat" itemscope itemtype="http://schema.org/Article">
               <div class="articleHeader">
                  <h3 itemprop="name"><a href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>" itemprop="url"><?php echo $article['title']; ?></a></h3>
                  <?php if ($article['art_infoName'] || $article['art_infoCategory'] || $article['art_infoDate']) { ?>
                     <span>
                        <?php echo $article['art_infoName'] . $article['art_infoCategory'] . $article['art_infoDate']; ?>
                        <?php if ($article['art_infoName'] || $article['art_infoCategory'] || $article['art_infoDate']) { ?>. <?php }?>
                     </span>
                  <?php }?>
               </div>
               <div class="articleContent">
                  <?php if ($article['image']) { ?>
                     <a href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>" itemprop="url"><img class="imageFeatured" src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>" itemprop="image" /></a>
                  <?php } ?>
                  <span itemprop="description"><?php echo $article['description']; ?></span>
                  <div class="readMore">
                     <?php if ($article['comments'] && $article['art_infoComment']) { ?>
                        <span class="comment"><a href="<?php echo $article['comments_href']; ?>#articleComments" title="<?php echo $article['comments']; ?>"><?php echo $article['comments']; ?></a></span>
                     <?php } ?>
                     <span class="more"><a href="<?php echo $article['readmore']; ?>" title="<?php echo $article['title']; ?>"><?php echo $read_more; ?></a></span>
                  </div>
               </div>
            </div>
         <?php } ?>
      <?php } ?>
   </div>
   
   <div class="pagination"><?php echo $pagination; ?></div>
   <?php echo $content_bottom; ?>
   </div>
   </section>
   <?php echo $column_right; ?>
</div>
<?php echo $footer; ?> 