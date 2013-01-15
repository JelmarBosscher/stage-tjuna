<section id="content" class="article-<?php echo article_id(); ?> section-post">

	<header>
		<time datetime="<?php echo date(DATE_W3C, article_time()); ?>">Written <?php echo relative_time(article_time()); ?></time>
	</header>


	<?php if(article_custom_fields()): ?>
		<div class="post-cover">								
		    <img src="<?php echo article_custom_field('cover', 'stage image'); ?>" >
		    <span class="greyOut"></span>
		</div>
	<?php endif; ?>
	<article class="post">
		
		<header>
			<hgroup>
				<h1><?php echo article_title(); ?></h1>
			</hgroup>
		</header>
		
		
		<div class="postDescription">
		<?php echo article_description(); ?>
		</div>

		<?php echo article_html(); ?>
		
		
	</article>
	
	<?php if(article_custom_fields()): ?>
		<div class="post-competenties">								
		    <p>Behaalde competenties : <span class="competenties"><?php echo article_custom_field('competenties', 'stage competenties'); ?></span></p>
		</div>
	<?php endif; ?>
	
	<article class="post">
		<?php include 'includes/comment_form.php'; ?>
	</article>

</section>

