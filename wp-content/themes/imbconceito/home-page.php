<?php
/**
 * Template Name: Página Inicial
 *
 * A custom page template without sidebar.
 *
 * The "Template Name:" bit above allows this to be selectable
 * from a dropdown menu on the edit page screen.
 *
 * @package WordPress
 * @subpackage Twenty_Eleven
 * @since Twenty Eleven 1.0
 */

get_header(); ?>

		<div id="slideshow">        
	        <div class="container_12">
	            <div class="grid_12">
	                <?
	                if ( function_exists( 'get_smooth_slider' ) ) {
	                     get_smooth_slider(); }
	                ?>
	            </div>
	        </div>
	    </div>
	    
	    <div id="search">
	    	<div class="container_12">
	    		<?php echo do_shortcode('[property_search searchable_attributes="property_type,cidade,finalidade" per_page=10]'); ?>
	    		<?//php echo do_shortcode('[property_search searchable_attributes="tipo,finalidade,cidade" per_page=10]'); ?>
	    	</div>
	    	<div class="clear"></div>
	    </div>	    

		<div id="content" role="main">
	        <div class="container_12">
	            <div class="grid_9">
	                <span class="canto"></span>

		            <?php while ( have_posts() ) : the_post(); ?>

						<?php get_template_part( 'content', 'page' ); ?>

						<?php comments_template( '', true ); ?>

					<?php endwhile; // end of the loop. ?>	                

	            </div>
	            
	            <div class="grid_3">
	                <?php get_sidebar(); ?>
	            </div>
	        </div>
	    </div>


<?php get_footer(); ?>
