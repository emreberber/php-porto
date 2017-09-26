<?php 
include 'header.php';
include '../netting/baglan.php';

error_reporting(E_ALL ^ E_NOTICE); // HATA GİZLEME 

$hakkimizdasor=$db->prepare("SELECT * FROM hakkimizda WHERE hakkimizda_id=?"); 
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC); 
?>
<head><script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script></head>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Hakkımızda</h3>
              </div>
<!--
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Anahtar Kelimeniz ...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button"> Ara !</button>
                    </span>
                  </div>
                </div>
              </div>
-->

            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Hakkımzda Ayar Yapılandırması<small>
                    <?php 
                    if($_GET['durum']=='ok') 
                    { ?>

                      <b style="color:green;">Güncelleme Başarılı ... </b>

                   <?php } 
                      elseif($_GET['durum']=='no')
                      { ?>
                        <b style="color:red;">Güncelleme Başarısız ... </b>
                      <?php } ?>

                       
                    </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                     <form  action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Başlık<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="hakkimizda_baslik" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $hakkimizdacek['hakkimizda_baslik']; ?>">
                        </div>
                      </div>


                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">İçerik <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea classs="ckeditor" id="editor1" name="hakkimizda_icerik"><?php echo $hakkimizdacek['hakkimizda_icerik'];?></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
            </script>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Video<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="hakkimizda_video" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $hakkimizdacek['hakkimizda_video']; ?>">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Vizyon<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="hakkimizda_vizyon" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $hakkimizdacek['hakkimizda_vizyon']; ?>">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Misyon<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="hakkimizda_misyon" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $hakkimizdacek['hakkimizda_misyon']; ?>">
                        </div>
                      </div>


                      <div align="right" class="col-md-8 col-sm-8 col-xs-12 col-md-offset-3">
                        <button type="submit" name="hakkimizdakaydet" class="btn btn-primary">        Güncelle
                        </button>
                      </div>

                      </form>                     

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

<?php include 'footer.php'; ?>