<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Eleven
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
            <div class="grid_12">
                <form>
                    <fieldset>
                        <legend>Encontre seu Imóvel:</legend>
                        
                        <label for="tipo">Tipo:
                            <select id="tipo">
                                <option>Apartamento</option>
                                <option>Casa</option>
                            </select>
                        </label>

                        <label for="cidade">Cidade:
                            <select id="cidade">
                                <option>Apartamento</option>
                                <option>Casa</option>
                            </select>
                        </label>
                        
                        <label for="finalidade">Finalidade:
                            <select id="finalidade">
                                <option>Apartamento</option>
                                <option>Casa</option>
                            </select>
                        </label>
                        
                        <input type="submit" value="Pesquisar" name="Pesquisar">
                    </fieldset>
                </form>
            </div>            
        </div>
    </div>

	<div id="content">
        <div class="container_12">
            <div class="grid_9">

            	<div id="content" role="main">

					<?php if ( have_posts() ) : ?>

						<?php twentyeleven_content_nav( 'nav-above' ); ?>

						<?php /* Start the Loop */ ?>
						<?php while ( have_posts() ) : the_post(); ?>

							<?php get_template_part( 'content', get_post_format() ); ?>

						<?php endwhile; ?>

						<?php twentyeleven_content_nav( 'nav-below' ); ?>

					<?php else : ?>

						<article id="post-0" class="post no-results not-found">
							<header class="entry-header">
								<h1 class="entry-title"><?php _e( 'Nothing Found', 'twentyeleven' ); ?></h1>
							</header><!-- .entry-header -->

							<div class="entry-content">
								<p><?php _e( 'Apologies, but no results were found for the requested archive. Perhaps searching will help find a related post.', 'twentyeleven' ); ?></p>
								<?php get_search_form(); ?>
							</div><!-- .entry-content -->
						</article><!-- #post-0 -->

					<?php endif; ?>

				</div><!-- #content -->

                <span class="canto"></span>
                <h2>Oportunidades em Destaque</h2>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>                        
                    </ul>
                    <a href="#" class="detalhes">detalhes do imóvel</a> 
                </div>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>
                    </ul>
                    <a href="#" class="detalhes">detalhes do imóvel</a> 
                </div>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>
                    </ul>
                    <a href="#" class="detalhes">detalhes do imóvel</a> 
                </div>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>
                    </ul>
                </div>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>
                    </ul>                    
                </div>

                <div class="imovel">
                    <img src="<?php bloginfo( 'template_directory' ); ?>/images/imovel-thumb.png" alt="imovel">
                    <ul>
                        <li>R$ 150.000,00</li>
                        <li>Águas Claras</li>
                        <li>Sala. 4 quartos, 2 banheiros, 200m²</li>
                        <li>Apartamento</li>
                    </ul>
                </div>

            </div>
            <div class="grid_3">
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>

<?php get_footer(); ?>