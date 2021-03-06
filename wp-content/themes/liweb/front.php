<?php get_header(); ?>

<?php echo do_shortcode('[rev_slider ten-mien-dep]'); ?>
<?php
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

?>
<div class = "clearfix">
<!--ABOUT-->
<div id="anchor-about" class="pi-section-w pi-section-white">
            <div class="pi-section pi-padding-top-90 pi-padding-bottom-30">
                <div class="pi-text-center pi-padding-bottom-40">
                    <h6 class="pi-uppercase pi-letter-spacing-3 pi-text-base pi-margin-bottom-15">Giới thiệu</h6>
                    <h2 class="h1 pi-weight-700 pi-uppercase pi-has-border pi-has-tall-border pi-has-short-border">PNG SOLUTION</h2>
                </div>
                <div class="pi-row">
                    <div class="pi-col-sm-6 pi-padding-bottom-50">
                        <div class="pi-slider-wrapper pi-slider-arrows-inside pi-slider-show-arrow-hover">
                            <div class="pi-slider pi-slider-animate-opacity">
                                <div class="pi-slide">
                                    <div class="pi-img-w pi-img-round-corners pi-img-shadow pi-img-with-overlay">
                                        <a href="#"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/office-building.jpg" alt=""></a>
                                    </div>
                                </div>
                                <div class="pi-slide">
                                    <div class="pi-img-w pi-img-round-corners pi-img-shadow pi-img-with-overlay">
                                        <a href="#"><img src="<?=$actual_link?>wp-content/themes/liweb/img_external/gallery/team-photo.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pi-col-sm-6 pi-padding-bottom-50">
                        <p class="lead-26 pi-weight-300 pi-text-base pi-margin-top-minus-10">Giải pháp thiết kế website - thiết kế thương hiệu - cung cấp Hosting/Domain chất lượng.</p>
                        <p class="pi-margin-bottom-30" id="about-text">
                        <?php
                        $text = file_get_contents('http://localhost:8080/liweb/wp-content/themes/liweb/front-content/about.txt');
                        echo $text;
                        ?>
                        </p>
                        <h5 class="pi-uppercase pi-weight-700">Giá trị cốt lõi:</h5>
                        <div class="pi-row">
                            <div class="pi-col-sm-6">
                                <ul class="pi-list-with-icons pi-list-icons-ok">
                                    <li>TÍN: Bảo vệ vhữ tín và danh dự.</li>
                                    <li>TÂM: Duy trì đạo đức - lấy khách hàng làm trung tâm.</li>
                                    <li>TRÍ: PNG chủ trương một doanh nghiệp luôn học hỏi.</li>
                                    <li>Tốc: Tốc độ, hiệu quả trong từng hành động.</li>
                                </ul>
                            </div>
                            <div class="pi-col-sm-6">
                                <ul class="pi-list-with-icons pi-list-icons-ok">
                                    <li>Tinh: Con người tinh hoa - sản phẩm/ dịch vụ tinh hoa - cuộc sống tinh hoa - xã hội tinh hoa.</li>
                                    <li>Nhân: PNG coi con người là tài sản quý giá nhất</li>
                                    <li>Hòa: Hòa thuận - đoàn kết tạo nên sức mạnh</li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</div>
<!--END ABOUT-->
<!--SOME NUMBER-->
    <div class="pi-section-w pi-section-parallax" style="background-image: url(http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/modern-skyscraper.jpg)">
            <div class="pi-texture pi-section-overlay-base"></div>
            <div class="pi-section pi-padding-top-50 pi-padding-bottom-20">
                <div class="pi-text-center pi-padding-bottom-20">
                    <h6 class="pi-uppercase pi-letter-spacing-3">Những con số</h6>
                </div>
                <div class="pi-row pi-grid-small-margins pi-text-center">
                    <div class="pi-col-sm-3 pi-col-2xs-6 pi-padding-bottom-20">
                        <div class="pi-counter pi-counter-simple" data-count-from="0" data-count-to="230" data-easing="easeInCirc" data-duration="1000" data-frames-per-second="0">
                            <div class="pi-counter-count pi-counter-count-big pi-text-white pi-weight-600 pi-text-shadow">
                                <p><i class="icon-thumbs-up"></i></p>
                                <div class="pi-counter-number">0</div>
                            </div>
                            <p class="lead-18">Mạng xã hội</p>
                        </div>
                    </div>
                    <div class="pi-col-sm-3 pi-col-2xs-6 pi-padding-bottom-20">
                        <div class="pi-counter pi-counter-simple" data-count-from="0" data-count-to="26" data-easing="easeInCirc" data-duration="2000" data-frames-per-second="10">
                            <div class="pi-counter-count pi-counter-count-big pi-text-white pi-weight-600 pi-text-shadow">
                                <p><i class="icon-arrows-ccw"></i></p>
                                $<span class="pi-counter-number">0</span>
                            </div>
                            <p class="lead-18">Giá trị cung cấp</p>
                        </div>
                    </div>
                    <div class="pi-col-sm-3 pi-col-2xs-6 pi-padding-bottom-20">
                        <div class="pi-counter pi-counter-simple" data-count-from="0" data-count-to="73" data-easing="easeInCirc" data-duration="3000" data-frames-per-second="10">
                            <div class="pi-counter-count pi-counter-count-big pi-text-white pi-weight-600 pi-text-shadow">
                                <p><i class="icon-compass"></i></p>
                                <span class="pi-counter-number">73</span>%
                            </div>
                            <p class="lead-18">Hệ thống thương hiệu</p>
                        </div>
                    </div>
                    <div class="pi-col-sm-3 pi-col-2xs-6 pi-padding-bottom-20">
                        <div class="pi-counter pi-counter-simple" data-count-from="0" data-count-to="59" data-easing="easeInCirc" data-duration="4000" data-frames-per-second="10">
                            <div class="pi-counter-count pi-counter-count-big pi-text-white pi-weight-600 pi-text-shadow">
                                <p><i class="icon-paper-plane"></i></p>
                                <span class="pi-counter-number">59</span>k
                            </div>
                            <p class="lead-18">Tiếp cận khách hàng</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--END SOME NUMBER-->

<!--SERVICES-->
        <div id="anchor-services" class="pi-section-w pi-section-white">
            <div class="pi-section pi-padding-top-90 pi-padding-bottom-60">
                <div class="pi-text-center pi-padding-bottom-40">
                    <h6 class="pi-uppercase pi-letter-spacing-3 pi-text-base pi-margin-bottom-15">Dịch vụ</h6>
                    <h2 class="h1 pi-weight-700 pi-uppercase pi-has-border pi-has-tall-border pi-has-short-border">Những ngành liên quan</h2>
                </div>
                <div class="pi-row">
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-lamp"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">Giải pháp thương hiệu</a></h5>
                                <p class="pi-margin-bottom-10">Tư vấn xây dựng thương hiệu trên internet</p>
                            </div>
                        </div>
                    </div>
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-monitor"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">Thiết kế in ấn</a></h5>
                                <p class="pi-margin-bottom-10">Thiết kế những ấn phẩm thương hiệu như: Card-visit, brochure, leaflet, catalog...</p>
                            </div>
                        </div>
                    </div>
                    <div class="pi-clearfix pi-visible-xs"></div>
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-brush"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">Thiết kế logo</a></h5>
                                <p class="pi-margin-bottom-10">Thiết kế logo chuyên biệt, sáng tạo cho từng doanh nghiệp đăng ký kinh doanh.</p>
                            </div>
                        </div>
                    </div>
                    <div class="pi-clearfix pi-hidden-xs pi-visible-sm-only"></div>
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-cog"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">Thiết kế website</a></h5>
                                <p class="pi-margin-bottom-10">Thiết kế website hiện đại, tối ưu với giá tốt nhất.</p>
                            </div>
                        </div>
                    </div>
                    <div class="pi-clearfix pi-visible-xs"></div>
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-mobile"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">Giao diện mobile</a></h5>
                                <p class="pi-margin-bottom-10">Thiết kế website trên nền tảng mobile first, chạy trên tất cả mọi thiết bị.</p>
                            </div>
                        </div>
                    </div>
                    <div class="pi-col-xs-6 pi-col-sm-4 pi-padding-bottom-40">
                        <div class="pi-icon-box pi-icon-box-hover pi-icon-box-icon-big">
                            <div class="pi-icon-box-icon pi-icon-box-icon-circle"><i class="icon-search"></i></div>
                            <div class="pi-icon-box-content-2">
                                <h5 class="pi-uppercase pi-weight-700"><a href="#" class="pi-link-dark">S.E.O - Quảng cáo google/facebook.</a></h5>
                                <p class="pi-margin-bottom-10">Cung cấp giải pháp SEO từ khóa, quảng cáo google ads, facebook ads nhằm tăng độ tiếp cận người dùng.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--END SERVICES-->
        
        <!--MEET THE TEAM--><!--
        <div id="anchor-team" class="pi-section-w pi-section-white piSocials">
            <div class="pi-section pi-padding-top-90 pi-padding-bottom-30">
                <div class="pi-text-center pi-padding-bottom-20">
                    <h6 class="pi-uppercase pi-letter-spacing-3 pi-text-base pi-margin-bottom-15">Team</h6>
                    <h2 class="h1 pi-weight-700 pi-uppercase pi-has-border pi-has-tall-border pi-has-short-border">Thành viên của PNG</h2>
                    <p class="lead-16">Với đội ngũ chuyên gia, kỹ sư được đào tạo chuyên sâu, chuyên trách từng mảng sản phẩm, chúng tôi luôn đem đến cho khách hàng
                    <br>những giải pháp kỹ thuật, thương mại đa dạng, đáp ứng tốt nhu cầu ngày càng cao của khách hàng..</p>
                </div>
                <div class="pi-row">
                    <div class="pi-col-xs-6 pi-col-sm-3 pi-padding-bottom-40 pi-text-center">
                        <div class="pi-img-w pi-img-round pi-img-center" style="max-width: 220px">
                            <a href="#"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/team/leader-11.jpg" alt=""> <span class="pi-img-overlay pi-img-round"><span class="pi-caption-centered"><span><span class="pi-caption-icon pi-caption-icon-light pi-caption-scale icon-plus"></span></span>
                                </span>
                                </span>
                            </a>
                        </div>
                        <h5 class="pi-uppercase pi-weight-700 pi-margin-bottom-5 pi-letter-spacing">Phạm Xuân Phú</h5>
                        <p class="pi-italic pi-text-base pi-margin-bottom-10">Founder, Lập trình viên</p>
                        <p class="pi-margin-bottom-10">Chuyên ngành lập trình website/ thiết kế website trên nền tảng linux. Designer - Front end and Back end developer</p>
                        <ul class="pi-social-icons pi-jump pi-small pi-round pi-colored-bg clearFix">
                            <li><a href="#" class="pi-social-icon-facebook"><i class="icon-facebook"></i></a></li>
                            <li><a href="#" class="pi-social-icon-twitter"><i class="icon-twitter"></i></a></li>
                            <li><a href="#" class="pi-social-icon-dribbble"><i class="icon-dribbble"></i></a></li>
                        </ul>
                    </div>
                    <div class="pi-col-xs-6 pi-col-sm-3 pi-padding-bottom-40 pi-text-center">
                        <div class="pi-img-w pi-img-round pi-img-center" style="max-width: 220px">
                            <a href="#"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/team/leader-22.jpg" alt=""> <span class="pi-img-overlay pi-img-round"><span class="pi-caption-centered"><span><span class="pi-caption-icon pi-caption-icon-light pi-caption-scale icon-plus"></span></span>
                                </span>
                                </span>
                            </a>
                        </div>
                        <h5 class="pi-uppercase pi-weight-700 pi-margin-bottom-5 pi-letter-spacing">Nguyễn Đình Tuấn Anh</h5>
                        <p class="pi-italic pi-text-base pi-margin-bottom-10">Kỹ sư cầu nối/ giám đốc dự án - cố vấn tại PNG</p>
                        <p class="pi-margin-bottom-10">Là một kỹ sư lập trình web ứng dụng với 15 năm kinh nghiệm làm việc cho các dự án trong và ngoài nước</p>
                        <ul class="pi-social-icons pi-jump pi-small pi-round pi-colored-bg clearFix">
                            <li><a href="#" class="pi-social-icon-facebook"><i class="icon-facebook"></i></a></li>
                            <li><a href="#" class="pi-social-icon-twitter"><i class="icon-twitter"></i></a></li>
                            <li><a href="#" class="pi-social-icon-dribbble"><i class="icon-dribbble"></i></a></li>
                        </ul>
                    </div>
                    <div class="pi-col-xs-6 pi-col-sm-3 pi-padding-bottom-40 pi-text-center">
                        <div class="pi-img-w pi-img-round pi-img-center" style="max-width: 220px">
                            <a href="#"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/team/leader-33.jpg" alt=""> <span class="pi-img-overlay pi-img-round"><span class="pi-caption-centered"><span><span class="pi-caption-icon pi-caption-icon-light pi-caption-scale icon-plus"></span></span>
                                </span>
                                </span>
                            </a>
                        </div>
                        <h5 class="pi-uppercase pi-weight-700 pi-margin-bottom-5 pi-letter-spacing">Lê Văn Đạt</h5>
                        <p class="pi-italic pi-text-base pi-margin-bottom-10">Team leader & cố vấn</p>
                        <p class="pi-margin-bottom-10">Full stack developer, cố vấn kỹ thuật cấp cao</p>
                        <ul class="pi-social-icons pi-jump pi-small pi-round pi-colored-bg clearFix">
                            <li><a href="#" class="pi-social-icon-twitter"><i class="icon-twitter"></i></a></li>
                            <li><a href="#" class="pi-social-icon-dribbble"><i class="icon-dribbble"></i></a></li>
                            <li><a href="#" class="pi-social-icon-vimeo"><i class="icon-vimeo"></i></a></li>
                        </ul>
                    </div>
                    <div class="pi-col-xs-6 pi-col-sm-3 pi-padding-bottom-40 pi-text-center">
                        <div class="pi-img-w pi-img-round pi-img-center" style="max-width: 220px">
                            <a href="#"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/team/leader-44.jpg" alt=""> <span class="pi-img-overlay pi-img-round"><span class="pi-caption-centered"><span><span class="pi-caption-icon pi-caption-icon-light pi-caption-scale icon-plus"></span></span>
                                </span>
                                </span>
                            </a>
                        </div>
                        <h5 class="pi-uppercase pi-weight-700 pi-margin-bottom-5 pi-letter-spacing">Nguyễn Văn Duy</h5>
                        <p class="pi-italic pi-text-base pi-margin-bottom-10">Designer</p>
                        <p class="pi-margin-bottom-10">Designer website, thiết kế ấn phẩm thương hiệu với tinh thần sáng tạo không ngừng học hỏi</p>
                        <ul class="pi-social-icons pi-jump pi-small pi-round pi-colored-bg clearFix">
                            <li><a href="#" class="pi-social-icon-instagram"><i class="icon-instagram"></i></a></li>
                            <li><a href="#" class="pi-social-icon-dribbble"><i class="icon-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>-->
        <!--END TEAM-->
        <!--TESTIMONIALS-->
        <div id="anchor-testimonials" class="pi-section-w pi-section-parallax pi-slider-enabled" style="background-image: url(http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/consulting.jpg)">
            <div class="pi-texture" style="background: rgba(30, 35, 41, 0.8)"></div>
            <div class="pi-section pi-padding-top-70 pi-padding-bottom-70">
                <div class="pi-text-center pi-padding-bottom-20">
                    <h6 class="pi-uppercase pi-letter-spacing-3 pi-margin-bottom-15">Khách hàng nói về chúng tôi</h6>
                </div>
                <div class="pi-slider-wrapper pi-slider-arrows-inside pi-slider-show-arrow-hover pi-text-center">
                    <div class="pi-slider pi-slider-animate-opacity">
                        <div class="pi-row">
                            <div class="pi-col-sm-10 pi-col-sm-offset-1">
                                <div class="pi-slide">
                                    <div class="pi-img-w pi-img-round"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/testimonials/client-photo-2.jpg" style="width: 80px"></div>
                                    <p class="lead-32 pi-text-white pi-text-shadow pi-italic"><i class="icon-quote pi-text-base pi-icon-left"></i>Sự nhiệt tình và khả năng kỹ thuật là điều tôi đánh giá cao tại đây.<i class="icon-quote pi-text-base pi-icon-right"></i></p>
                                    <p class="pi-text-base"><i class="icon-star"></i> <i class="icon-star"></i> <i class="icon-star"></i></p>
                                    <p class="lead-16 pi-weight-700 pi-text-white pi-text-shadow pi-uppercase pi-letter-spacing pi-margin-bottom-5">Jim Terrell</p>
                                    <p class="pi-italic">Project Director. Company Inc.</p>
                                </div>
                                <div class="pi-slide">
                                    <div class="pi-img-w pi-img-round"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/testimonials/client-photo-3.jpg" style="width: 80px"></div>
                                    <p class="lead-32 pi-text-white pi-text-shadow pi-italic"><i class="icon-quote pi-text-base pi-icon-left"></i>Quas molestias excepturi praesentium voluptatum deleniti atque at vero eos et accusamus ducimus.<i class="icon-quote pi-text-base pi-icon-right"></i></p>
                                    <p class="pi-text-base"><i class="icon-star"></i> <i class="icon-star"></i> <i class="icon-star"></i></p>
                                    <p class="lead-16 pi-weight-700 pi-text-white pi-text-shadow pi-uppercase pi-letter-spacing pi-margin-bottom-5">Kindra Hall</p>
                                    <p class="pi-italic">Associate Director. Company Inc.</p>
                                </div>
                                <div class="pi-slide">
                                    <div class="pi-img-w pi-img-round"><img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/testimonials/client-photo-1.jpg" style="width: 80px"></div>
                                    <p class="lead-32 pi-text-white pi-text-shadow pi-italic"><i class="icon-quote pi-text-base pi-icon-left"></i>Blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi.<i class="icon-quote pi-text-base pi-icon-right"></i></p>
                                    <p class="pi-text-base"><i class="icon-star"></i> <i class="icon-star"></i> <i class="icon-star"></i></p>
                                    <p class="lead-16 pi-weight-700 pi-text-white pi-text-shadow pi-uppercase pi-letter-spacing pi-margin-bottom-5">Mattias Nuffer</p>
                                    <p class="pi-italic">Executive Director. Company Inc.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--WORK - CASE STUDIES-->
        <div id="anchor-work" class="pi-section-w pi-section-white">
            <div class="pi-section pi-padding-top-90 pi-padding-bottom-70">
                <div class="pi-text-center pi-padding-bottom-10">
                    <h6 class="pi-uppercase pi-letter-spacing-3 pi-text-base pi-margin-bottom-15">Work</h6>
                    <h2 class="h1 pi-weight-700 pi-uppercase pi-has-border pi-has-tall-border pi-has-short-border">Case Studies</h2>
                    <p class="lead-16">Contrary to popular belief, Lorem Ipsum is not simply random text.<br>It has roots in piece of classical.</p>
                </div>
                <div class="pi-pagenav pi-big pi-text-center" data-isotope-nav="isotope">
                    <ul>
                        <li><a href="#" class="pi-active" data-filter="*">All</a></li>
                        <li><a href="#" data-filter=".Beautiful">Beautiful</a></li>
                        <li><a href="#" data-filter=".Lifestyle">Lifestyle</a></li>
                        <li><a href="#" data-filter=".Creation">Creation</a></li>
                        <li><a href="#" data-filter=".Travel">Travel</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--END CASE STUDIES-->
        <div class="pi-section-w pi-section-white">
            <div id="isotope" class="pi-row pi-liquid-col-xs-2 pi-liquid-col-lg-3 pi-gallery pi-stacked pi-no-margin-bottom isotope pi-column-fix">
                <div class="Beautiful Travel pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/woman-at-the-wall.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/woman-at-the-wall.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-plus"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Woman at the wall</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Beautiful</a>, <a href="#">Travel</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Beautiful Food pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/healthy-food.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/healthy-food.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-search-1"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Healthy food</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Beautiful</a>, <a href="#">Food</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Sport Lifestyle pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/golf-ball.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/golf-ball.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-plus"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Golf ball</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Sport</a>, <a href="#">Lifestyle</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Travel Lifestyle pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/sailing.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/sailing.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-plus"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Sailing</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Travel</a>, <a href="#">Lifestyle</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Сreation pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/digital-photo-camera.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/digital-photo-camera.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-plus"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Digital Photo Camera</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Сreation</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Creation Lifestyle pi-gallery-item isotope-item">
                    <div class="pi-img-w pi-img-hover-zoom">
                        <img src="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/microphone-on-concert.jpg" alt="">
                        <div class="pi-img-overlay pi-img-overlay-darker">
                            <div class="pi-caption-centered">
                                <div>
                                    <a href="http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/microphone-on-concert.jpg" class="pi-colorbox"><span class="pi-caption-icon pi-caption-scale icon-plus"></span></a>
                                    <h4 class="pi-uppercase"><a href="#" class="pi-link-white">Microphone on concert</a></h4>
                                    <ul class="pi-caption-links">
                                        <li><i class="icon-tag"></i><a href="#">Creation</a>, <a href="#">Lifestyle</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--END WORK- CASE STUDIES-->
        <!--END CASE STUDIES-->
        <!--HOT LINE-->
        <div class="pi-section-w pi-section-parallax" style="background-image: url(http://localhost:8080/liweb/wp-content/themes/liweb/img_external/gallery/architecture.jpg)">
            <div class="pi-texture" style="background: rgba(24, 28, 32, 0.8)"></div>
            <div class="pi-section pi-padding-top-90 pi-padding-bottom-80">
                <div class="pi-icon-box-vertical pi-text-center">
                    <div class="pi-icon-box-icon pi-icon-box-icon-big pi-icon-box-icon-base"><i class="icon-phone"></i></div>
                    <h2 class="h1 pi-has-border pi-has-tall-border pi-has-short-border pi-text-shadow"> ( 0909 ) <span class="pi-weight-700">490 - 619</span></h2>
                    <p class="lead-18 pi-text-shadow pi-uppercase pi-weight-700 pi-text-white pi-margin-bottom-5">49 Huỳnh Tịnh Của, Phường 5 quận 3, Hồ Chí Minh</p>
                    <p class="lead-18 pi-text-shadow pi-uppercase pi-weight-700 pi-margin-bottom-30"><a href="mailto:phuxuan167@gmail" class="mail-text uppercase oswald">phuxuan167@gmail.com</a></p>
                </div>
            </div>
        </div>
        <!--END HOTLINE-->
        
        <div class="pi-section-w pi-border-bottom pi-border-top-light pi-section-dark">
            <div class="pi-section pi-padding-bottom-10">
                <div class="pi-row">
                    <div class="pi-col-md-4 pi-padding-bottom-30">
                        <h6 class="pi-margin-bottom-25 pi-weight-700 pi-uppercase pi-letter-spacing"><a href="#" class="pi-link-no-style">Latest Tweet</a></h6>
                        <div class="pi-footer-tweets">
                            <ul class="pi-bullets-circle pi-bullets-base pi-bullets pi-list-big-margins">
                                <li><span class="pi-bullet-icon"><i class="icon-twitter"></i></span><a href="http://twitter.com/PIthemess" target="_blank" title="PIthemess on Twitter">@PIthemess</a> Meet Aura 1.6 version. A lot of new things are coming soon.<br><span class="pi-smaller-text pi-italic pi-text-opacity-50">Jun. 29, 2014</span></li>
                                <li><span class="pi-bullet-icon"><i class="icon-twitter"></i></span><a href="http://twitter.com/PIthemess" target="_blank" title="PIthemess on Twitter">@PIthemess</a> Hey, this is PI Themes twitter account!<br><span class="pi-smaller-text pi-italic pi-text-opacity-50">Jun. 29, 2014</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="pi-clearfix pi-hidden-lg-only pi-hidden-md-only"></div>
                    <div class="pi-col-md-4 pi-col-sm-6 pi-padding-bottom-30" style="background-image: url('img/map-base.png'); background-position: 50% 55px; background-repeat: no-repeat">
                        <h6 class="pi-margin-bottom-25 pi-weight-700 pi-uppercase pi-letter-spacing">Contact Us</h6>
                        <ul class="pi-list-with-icons pi-list-big-margins">
                            <li><span class="pi-bullet-icon"><i class="icon-location"></i></span> <strong>Address:</strong> 557 Cyan Avenue, Suite 65,<br>New York, CA 9008</li>
                            <li><span class="pi-bullet-icon"><i class="icon-phone"></i></span> <strong>Phone:</strong> (123) 456-7890</li>
                            <li><span class="pi-bullet-icon"><i class="icon-mail"></i></span> <strong>Email:</strong> <a href="mailto:hello@pitheme.com">hello@pitheme.com</a></li>
                            <li><span class="pi-bullet-icon"><i class="icon-clock"></i></span> Monday - Friday: <strong>9:00 am - 10:00 pm</strong><br>Saturday - Sunday: <strong>Closed</strong></li>
                        </ul>
                    </div>
                    <div class="pi-col-md-4 pi-col-sm-6 pi-padding-bottom-30">
                        <h6 class="pi-margin-bottom-25 pi-weight-700 pi-uppercase pi-letter-spacing">Say Hey</h6>
                        <div class="pi-section-w pi-section-white">
                            <div class="pi-google-map pi-google-map-wide googleMap" style="height: 200px">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2882106794054!2d106.6852069147144!3d10.78922386190777!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2d50100ddd%3A0x4a1e1ee5aaddbdbc!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gRHUgbOG7i2NoIEFwZXggVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1456214875363" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery-1.11.0.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/bootstrap/js/bootstrap.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery.touchSwipe.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/gauge.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/inview.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/isotope/isotope.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.googleMapStyles.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery.gmap.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/requestAnimationFramePolyfill.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery.placeholder.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery.scrollTo.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/colorbox/jquery.colorbox-min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.scrollSpy.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.global.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.slider.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.slider.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.tooltip.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.tooltip.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/jquery.easing.1.3.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.counter.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.counter.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.parallax.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.parallax.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.isotope.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/scripts/pi.init.map.min.js"></script>
    <script src="http://localhost:8080/liweb/wp-content/themes/liweb/settings/settings.js"></script>
    
<?php get_footer(); ?>