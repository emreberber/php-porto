<?php include 'header.php';

$iceriksor=$db->prepare("SELECT * FROM icerik WHERE icerik_id=:icerik_id");
$iceriksor->execute(array(
	'icerik_id'=>$_GET['icerik_id']
));

$icerikcek=$iceriksor->fetch(PDO::FETCH_ASSOC);

 ?>

			<div role="main" class="main">
				<div class="container">
					<div class="row pt-xl">

						<div class="col-md-9">

							<h1 class="mt-xl mb-none"><?php echo $icerikcek['icerik_ad']; ?></h1>
							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>

							<div class="row">

								

								<!-- BASLA -->
								<div class="col-md-12">
									<span class="thumb-info thumb-info-side-image thumb-info-no-zoom mt-xl">
										<span class="thumb-info-side-image-wrapper p-none ">
											
												<img src="<?php echo $icerikcek['icerik_resimyol']; ?>" class="img-responsive" alt="" style="width: 395px; padding:10px;">
											
										</span>
										<span class="thumb-info-caption">
											<span class="thumb-info-caption-text">
												
												<!-- Zaman ve İsmi gizledik gerek yok diye ama zamanı ekledik yani çekebliyoruz
												<span class="post-meta">
													<span>January 10, 2016 | <a href="#">John Doe</a></span>
												</span>
												-->
												<p class="font-size-md"><?php echo $icerikcek['icerik_detay']; ?>...</p>
												<hr> <b>Anahtar Kelimeler : </b>

												


												<?php 
												error_reporting(E_ALL ^ E_NOTICE); // HATA GİZLEME 
												
												$etiketler=explode(',',$icerikcek['icerik_keyword']); 
												
												foreach ($etiketler as $etiketbas) { ?>
													<a href="arama?aranan=<?php echo $etiketbas; ?>"><buttton class="btn btn-primary btn-xs"><?php echo $etiketbas; ?></buttton></a>
												
												
												<?php }  ?>
												
												


											</span>
										</span>
									</span>
								</div>
									
								<!-- BİTİR -->
							</div>
						</div>

						


						<!-- SIDEBAR -->

						
								
									<?php   include 'rightbar.php'; ?>
						
					</div>

				</div>
			</div>

<?php include 'footer.php'; ?>