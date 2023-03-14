<?php include 'header.php'; ?>




<!-- banner -->
<div class="banner">
    <img src="images/photos/banner.jpg" class="img-responsive" alt="slide">
    <div class="welcome-message">
        <div class="wrap-info">
            <div class="information">
                <h1 class="animated fadeInDown">HOTEL ABC</h1>
                <h2 class="animated fadeInUp">Ở thả ga - Không lo về giá</h2>
                <h2 class="animated fadeInUp">Enjoy the best hotels and hotel services</h2>
            </div>
            <a href="#information" class="arrow-nav scroll wowload fadeInDownBig"><i class="fa fa-angle-down"></i></a>
        </div>
    </div>
</div>
<!-- banner-->
<?php
require_once('db.php');
$error = "";
$color = "red";
?>

<label style="color: <?php echo $color; ?>">
    <?php
    echo $error;
    ?>
</label>

<!-- services -->
<div class="spacer services wowload fadeInUp">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <!-- RoomCarousel -->
                <div id="RoomCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <?php
                        $q = "SELECT * FROM rooms LIMIT 3";
                        $run = mysqli_query($con, $q);
                        $count = 0;
                        if (mysqli_num_rows($run) > 0) {
                            while ($row = mysqli_fetch_array($run)) {
                                $image = $row['image1'];
                                if ($count == 0) {
                                    echo "<div class='item active'><img src='images/photos/$image' class='img-responsive' alt='slide'></div>";
                                } else {
                                    echo "<div class='item  height-full'><img src='images/photos/$image' class='img-responsive' alt='slide'></div>";
                                }
                                $count++;
                            }
                        }
                        ?>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#RoomCarousel" role="button" data-slide="prev"><i
                            class="fa fa-angle-left"></i></a>
                    <a class="right carousel-control" href="#RoomCarousel" role="button" data-slide="next"><i
                            class="fa fa-angle-right"></i></a>
                </div>
                <!-- RoomCarousel-->
                <div class="caption">Đầy đủ - Tiện nghi<a href="rooms-tariff.php" class="pull-right"><i class="fa fa-edit"></i></a>
                </div>
            </div>


            <div class="col-sm-4">
                <!-- RoomCarousel -->
                <div id="TourCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active"><img src="images/photos/6.jpg" class="img-responsive" alt="slide">
                        </div>
                        <div class="item  height-full"><img src="images/photos/3.jpg" class="img-responsive"
                                alt="slide"></div>
                        <div class="item  height-full"><img src="images/photos/4.jpg" class="img-responsive"
                                alt="slide"></div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#TourCarousel" role="button" data-slide="prev"><i
                            class="fa fa-angle-left"></i></a>
                    <a class="right carousel-control" href="#TourCarousel" role="button" data-slide="next"><i
                            class="fa fa-angle-right"></i></a>
                </div>
                <!-- RoomCarousel-->
                <div class="caption">Cảnh quan bậc nhất<a href="gallery.php" class="pull-right"><i
                            class="fa fa-edit"></i></a></div>
            </div>


            <div class="col-sm-4">
                <!-- RoomCarousel -->
                <div id="FoodCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active"><img src="images/photos/1.jpg" class="img-responsive" alt="slide">
                        </div>
                        <div class="item  height-full"><img src="images/photos/2.jpg" class="img-responsive"
                                alt="slide"></div>
                        <div class="item  height-full"><img src="images/photos/5.jpg" class="img-responsive"
                                alt="slide"></div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#FoodCarousel" role="button" data-slide="prev"><i
                            class="fa fa-angle-left"></i></a>
                    <a class="right carousel-control" href="#FoodCarousel" role="button" data-slide="next"><i
                            class="fa fa-angle-right"></i></a>
                </div>
                <!-- RoomCarousel-->
                <div class="caption">Thực đơn đa dạng<a href="gallery.php" class="pull-right"><i
                            class="fa fa-edit"></i></a></div>
            </div>
        </div>
    </div>
</div>
<!-- services -->


<?php include 'footer.php'; ?>