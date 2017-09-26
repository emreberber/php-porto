

<?php 
include 'header.php'; 

if (isset($_POST['aranan'])) {
    $aranan=$_POST['aranan'];
} else {

$aranan=$_GET['aranan'];
}

if (empty($aranan)) {
    
    header("Location:index.php");
    exit;
}



$sorgu=$db->prepare("SELECT * FROM icerik  where icerik_ad like ?");
$sorgu->execute(array("%$aranan%"));
$say=$sorgu->rowCount();

?>
<div role="main" class="main">
    <div class="container">
        <div>

            <div class="col-md-9">

                <h1 class="mt-xl mb-none">Sorgu Sonuçları</h1>
                <div class="divider divider-primary divider-small mb-xl">
                    <hr>
                </div>

                <div class="row">

                    <?php 
                    if ($say==0) {?>

                    <div class="col-md-9">
                        <p><b><?php echo $aranan ?></b> kelimesi ile ilgili sonuç bulunamadı...</p>
                    </div>
                </div>
                <?php }   ?>

                <?php 


         $sayfada = 4;//sayfada gösterilecek icerik miktarı

         

         $toplam_icerik = $sorgu->rowCount();

         $toplam_sayfa = ceil($toplam_icerik / $sayfada);

         //eger sayfa girilmemişse 1 varsayalım
         $sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;
         
         //eger 1 den kücük bir sayfa sayısı girilmemişse 1 yapalım
         if($sayfa < 1) $sayfa = 1;

         //toplam sayfa sayımızdan  fazla yazılırsa en son sayfayı varsayalım.
         if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa;

         $limit = ($sayfa - 1) * $sayfada;

         $iceriksor=$db->prepare("select * from icerik  where icerik_ad LIKE ? order by icerik_zaman  DESC limit $limit,$sayfada");
         $iceriksor->execute(array("%$aranan%"));


         while($icerikcek=$iceriksor->fetch(PDO::FETCH_ASSOC)) { ?>
         <!--başla--> 
         <div class="row mt-xl">
            <div class="col-md-12">

                <span class="thumb-info thumb-info-side-image thumb-info-no-zoom mt-xl">
                    <span class="thumb-info-side-image-wrapper p-none ">

                        <img src="<?php echo $icerikcek['icerik_resimyol'] ?>" class="img-responsive" alt="" style="width: 400px; height: 250px; padding: 10px;">

                    </span>
                    <span class="thumb-info-caption">
                        <span class="thumb-info-caption-text">
                            <h2 class="mb-md mt-xs"><?php echo $icerikcek['icerik_ad'] ?></h2>
                            <span class="post-meta">
                                <span>Tarih : <?php echo $icerikcek['icerik_zaman'] ?> | Yazar : <?php echo $icerikcek['icerik_yazar'] ?></span>
                            </span>
                            <p class="font-size-md"><?php echo substr($icerikcek['icerik_detay'],0,250); ?>...</p>
                            <a class="mt-md" href="haber-<?=seo($icerikcek["icerik_ad"]).'-'.$icerikcek["icerik_id"]?>"><i class="fa fa-long-arrow-right">Devamını Oku... </i></a>
                        </span>
                    </span>
                </span>

                <!-->
            </div>
        </div>

        <!--bitir-->
        <?php } ?>

    </div>

</div>



<!--side bar-->


    <?php include 'rightbar.php'; ?>


<!--side bar-->
</div>

</div>
</div>

<?php include 'footer.php'; ?>﻿ 