<section id="content" class="article-home">

	<?php if(has_posts()): ?>
			<?php while(posts()): ?>
				<a href="<?php echo article_url(); ?>" title="<?php echo article_title(); ?>">
					<article class="post home-post">
					
						
						
						
						<?php if(article_custom_fields()): ?>
							<div class="post-thumb">								
							    <img src="<?php echo article_custom_field('cover', 'stage image'); ?>" >
							    <span class="showInd"></span>
							</div>
						<?php endif; ?>
					
						<h1><?php echo article_title(); ?></h1>
							<?php echo article_description(); ?>
						
						
					</article>
					
				</a>
			<?php endwhile; ?>

		<p><?php echo posts_prev(); ?> <?php echo posts_next(); ?></p>

	<?php else: ?>
		<p>Looks like I have some writing to do!</p>
	<?php endif; ?>

</section>