<?php 
include 'header.php';
include '../netting/baglan.php';

error_reporting(E_ALL ^ E_NOTICE); // HATA GİZLEME 

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Kullanıcı Ayarları</h3>
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
                    <h2><?php echo  $kullanicicek['kullanici_ad']; ?> ile ilgili işlem yapıyorsunuz ...<small> 
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
                  <form enctype="multipart/form-data" action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">


                      <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Kullanıcı Resmi <br> 
                          </label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <?php
                            
                            if(strlen($kullanicicek["kullanici_resim"])>0)
                            { ?>
                              <img width="200"  src="../../<?php echo $kullanicicek['kullanici_resim']; ?>">
                            <?php } else { ?>
                            
                              <img width="200"  src="../../dimg/logo-yok.png">
                            
                            <?php } ?>
                            
                           
                          
                          </div>
                        </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Resim Seç <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" name="kullanici_resim" class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>
                      <input type="hidden" name="eski_yol" value="<?php echo $kullanicicek["kullanici_resim"] ?>">
                      <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek["kullanici_id"] ?>">
                      <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button type="submit" name="kresimduzenle" class="btn btn-primary">    Logo Güncelle
                        </button>
                      </div>
                      </form>
                     <div class="col-md-12"> <div class="col-md-6 col-md-offset-3"> <hr> </div> </div>


                     <form  action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Kullanıcı Adı <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="kullanici_ad" disabled="" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo  $kullanicicek['kullanici_ad']; ?>">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Kullanıcı Ad Soyad <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="kullanici_adsoyad"  required="required" class="form-control col-md-7 col-xs-12" value="<?php echo  $kullanicicek['kullanici_adsoyad']; ?>">
                        </div>
                      </div>



                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Kullanıcı Password <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" name="kullanici_password" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo  $kullanicicek['kullanici_password']; ?>">
                        </div>
                      </div>
                      <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek["kullanici_id"] ?>">

                      

                      <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button type="submit" name="kullaniciprofilkaydet" class="btn btn-primary">        Güncelle
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