
	</div><!-- #main -->

	<footer id="footer" class="site-footer" role="contentinfo">
		
		<div class="container">
			<div class="row">

				<?php get_sidebar( 'footer' ); // Loads the sidebar-footer.php template. ?>

				<div id="site-bottom" class="clearfix">

					<?php get_template_part( 'menu', 'subsidiary' ); // Loads the menu-subsidiary.php template. ?>

					<div class="bottom-right col-xs-12 col-md-5">
						<?php printf( __( 'Theme: %1$s by %2$s.', 'PNG Solution' ), 'PNG', '<a href="http://www.pngsolution.com/" rel="designer">Lightning Web</a>' ); ?> 
						<?php if ( of_get_option( 'gomedia_to_top', '1' ) ) { ?>
							<a class="backtotop" href="#top" style="font-weight:bold;"><?php _e( 'LÊN ĐẦU TRANG', 'PNG' ); ?></a>
						<?php } ?>
					</div>

				</div>
				
			</div><!-- .row -->
		</div><!-- .container -->

	</footer><!-- #footer -->
	
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
