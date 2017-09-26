<?php 
include 'header.php'; 
include '../netting/baglan.php';
error_reporting(E_ALL ^ E_NOTICE); // HATA GİZLEME 
ini_set('display_errors', 1);

//ARAMA İSLEMİ 

if(isset($_POST['arama']))
{
  $aranan=$_POST['aranan'];

  $menusor=$db->prepare("SELECT * FROM menu WHERE menu_ad LIKE '%$aranan%' order by menu_id ASC limit 25");
  $menusor->execute();

  $say=$menusor->rowCount();
}
else
{
  $menusor=$db->prepare("SELECT * FROM menu WHERE menu_ust=:menu_ust order by menu_sira ASC limit 25");
  $menusor->execute(array(
    'menu_ust'=>0
  ));
  $say=$menusor->rowCount();
}



?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">


            </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <form action="" method="POST">
                  <div class="input-group">
                    <input type="text" class="form-control" name="aranan" placeholder="Anahtar Kelime ...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="submit" name="arama">Ara!</button>
                    </span>
                  </div>
                </form>
                </div>
              </div>


            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                  <div align="left" class="col-md-6">
                    <h2>Menu İslemleri 
                    <small>
                    <?php echo $say." kayıt lisetelendi" ?>
                    <?php 
                    if($_GET['durum']=='ok') 
                    { ?>

                      <b style="color:green;">İslem Başarılı ... </b>

                   <?php } 
                      elseif($_GET['durum']=='no')
                      { ?>
                        <b style="color:red;">İslem Başarısız ... </b>
                      <?php } ?>

                       
                    </small>
                    </h2>
                    </div>
                    <div align="right" class="col-md-6">
                      <a href="menu-ekle.php"><button class="btn btn-danger"><i class="fa fa-plus" aria-hidden="true"></i> Yeni Ekle</button></a>
                    </div>
  
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      


                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">

                            
                            <th class="column-title text-center">menu Ad </th>
                            <th class="column-title text-center">Üst Menü </th>
                            <th class="column-title text-center">menu Sıra </th>
                            <th class="column-title text-center">menu Durum </th>
                            <th width="80" class="column-title"> </th>
                            <th width="80" class="column-title"></th>
                           
                            
                            </th>
                          </tr>
                        </thead>

                        <tbody>

                          <?php
                          while($menucek=$menusor->fetch(PDO::FETCH_ASSOC))
                          { 
                            $menu_id=$menucek['menu_id'];
                            
                            ?>

                          


                          <tr>
                            <td class="text-center"><?php echo $menucek['menu_ad']; ?> </td>
                            <td class="text-center"><?php echo $menucek['menu_ust']; ?> </td>
                            <td class="text-center "><?php echo $menucek['menu_sira']; ?> </td>
            
                            <td class=" ">

                            <?php
                            if($menucek['menu_durum']==1)
                              echo "Aktif";
                            else
                              echo "Pasif";
                             ?>
                            
                            </td>



                            <td class=""><a href="menu-duzenle.php?menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>


                            <td class=""><a href="../netting/islem.php?menusil=ok&menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-trash" aria-hidden="true"></i> Sil</button></a></td></td>
                          </tr>


                          <?php
                          $altmenusor=$db->prepare("SELECT * FROM menu WHERE menu_ust=:menu_id ORDER BY menu_sira");
                          $altmenusor->execute(array(
                            'menu_id'=>$menu_id
                          ));
                          while($altmenucek=$altmenusor->fetch(PDO::FETCH_ASSOC))
                          {  ?>


                          <tr>
                            <td class="text-right"><?php echo $altmenucek['menu_ad']; ?> </td>
                            <td class="text-center"><?php echo $altmenucek['menu_ust']; ?> </td>
                            <td class="text-center "><?php echo $altmenucek['menu_sira']; ?> </td>
            
                            <td class=" ">

                            <?php
                            if($menucek['menu_durum']==1)
                              echo "Aktif";
                            else
                              echo "Pasif";
                             ?>
                            
                            </td>



                            <td class=""><a href="menu-duzenle.php?menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-primary btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i> Düzenle</button></a></td>


                            <td class=""><a href="../netting/islem.php?menusil=ok&menu_id=<?php echo $menucek['menu_id']; ?>"><button style="width:80px;" class="btn btn-danger btn-xs"><i class="fa fa-trash" aria-hidden="true"></i> Sil</button></a></td></td>
                          </tr>



                          <?php } } ?>



                        </tbody>
                      </table>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

<?php include 'footer.php'; ?>