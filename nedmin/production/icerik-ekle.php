<?php 
include 'header.php';
include '../netting/baglan.php';


error_reporting(E_ALL ^ E_NOTICE); // HATA GİZLEME 

$ayarsor=$db->prepare("SELECT * FROM ayar WHERE ayar_id=?"); 
$ayarsor->execute(array(0));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC); 
?>

<head>
  <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
 
  </head>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>İcerik Düzenleme Paneli</h3>
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
                    <h2>icerik İslemleri<small>
                    <?php 
                    if($_GET['durum']=='ok') 
                    { ?>

                      <b style="color:green;">İslem Başarılı ... </b>

                   <?php } 
                      elseif($_GET['durum']=='no')
                      { ?>
                        <b style="color:red;">İslem Başarısız ... </b>
                      <?php } ?>

                       
                    </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                     <form enctype="multipart/form-data" action="../netting/islem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">


                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Resim Seç<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="file" name="icerik_resimyol" required="required" class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">icerik Zaman<span class="required">*</span>
                        </label>                        
                        <div class="col-md-3">
                            <input type="date" name="icerik_tarih" value="<?php echo date('Y-m-d')  ?>" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                        <div class="col-md-2">
                            <input type="time" name="icerik_saat" value="<?php echo date('H:i:s')  ?>" required="required" class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">icerik Ad<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="icerik_ad" required="required" class="form-control col-md-7 col-xs-12" placeholder="icerik adını giriniz ... ">
                        </div>
                      </div>

                        <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">İçerik Detay <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea classs="ckeditor" id="editor1" name="icerik_detay"></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
            </script>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">icerik Keyword<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" name="icerik_keyword" required="required" class="form-control col-md-7 col-xs-12" placeholder="icerik anahtar kelime giriniz ... ">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">icerik Durum<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select id="heard" class="form-control" name="icerik_durum" required>
                            <option value="1">Aktif</option>
                            <option value="0">Pasif</option>
                          </select>
                        </div>
                      </div>


                      <div align="right" class="col-md-8 col-sm-8 col-xs-12 col-md-offset-3">
                        <button type="submit" name="icerikkaydet" class="btn btn-primary">        Kaydet
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