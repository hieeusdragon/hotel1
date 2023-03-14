<?php include 'header.php';?>

<div class="container">


<h2>Hotel ABC | Sống và trải nghiệm</h2>

<!-- form -->

<div class="row">
  <?php
    require_once('db.php');
    $q = "SELECT * FROM rooms WHERE nb > 0";
    $run = mysqli_query($con, $q);
    $count = 0;
    if(mysqli_num_rows($run) > 0){
        while($row = mysqli_fetch_array($run)){
  ?>
  <div class="col-sm-6 wowload fadeInUp">
      <div class="rooms">
          <img src="images/photos/<?php echo $row['image1']; ?>" class="img-responsive">
          <div class="info">
              <h3><?php echo $row['title']; ?></h3>
              <h4>Số phòng: <?php echo $row['nb']; ?></h4>
              <p style="color: darkgreen;"> Diện tích: <?php echo $row['size']; ?> m2<br> Qua đêm: <?php echo $row['price']; ?> VND</p>
              <a href="room-details.php?id=<?php echo $row['id']; ?>" class="btn btn-default">Xem phòng</a>
          </div>
      </div>
  </div>
  <?php
        }
    }
  ?>
  
  
</div>


</div>
<?php include 'footer.php';?>