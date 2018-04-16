@extends('admin.template')
@section('title')
Dashboard - Administrasi
@endsection
@section('corejs')
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/pages/datatables_basic.js"></script>
@endsection
@section('content')
	<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">
					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="{{base_url('superuser')}}"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active"><a href="#">Kuesioner</a></li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Kuesioner : {{$kuesioner->judul}}</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>
						<div class="panel-heading">
							<table class="table table-striped table-sm" style="display: none">
								<tr>
									<td>Nama</td>
									<td id="nama_responden">Ikko</td>
								</tr>
								<tr>
									<td>Nama Instansi</td>
									<td id="instansi_responden">UNTAG</td>
								</tr>
							</table>
							<br>
							<div class="row">
								<div class="col-md-6">
									<input type="text" id="keyword" name="keyword" class="typeahead form-control" value="" placeholder="Pilih Responden (NIM OR NAMA)">
									<div id="bloodhound">
									  <input class="typeahead" type="text" placeholder="States of USA">
									</div>
								</div>
								<div class="col-md-6">
									<a href="{{base_url('superuser/kuesioner/create')}}"><button type="button" class="btn bg-teal-400 btn-labeled"><b><i class="icon-plus-circle2"></i></b> Jadikan Responden</button></a>
								</div>
							</div>
							<br>
							<div class="row">
								
							</div>
						</div>
						<table class="table table-striped table-lg table-responsive">
		                    <thead class="bg-teal-400">
		                        <tr>
		                        	<th>No</th>
		                        	<th>Soal</th>
		                            <th class="pull-right">Jawaban</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                    	@foreach($soal as $key => $result)
			                         <tr>
			                        	<td align="center">{{$key+1}}</td>
				                        <td class="text-center">
				                        	<span class="text-size-small text-muted">
				                        		{{$result->soal}}
				                        	</span>
				                        </td>
				                        <td class="text-center pull-right">
				                           <div class="form-group">
												<div class="radio-inline">
													<label>
														<input type="radio" name="jawaban{{$result->id_soal}}" value="1">
														1
													</label>
												</div>
												<div class="radio-inline">
													<label>
														<input type="radio" name="jawaban{{$result->id_soal}}" value="2">
														2
													</label>
												</div>
												<div class="radio-inline">
													<label>
														<input type="radio" name="jawaban{{$result->id_soal}}" value="3">
														3
													</label>
												</div>
												<div class="radio-inline">
													<label>
														<input type="radio" name="jawaban{{$result->id_soal}}" value="4">
														4
													</label>
												</div>
												<div class="radio-inline">
													<label>
														<input type="radio" name="jawaban{{$result->id_soal}}" value="5"> 
														5
													</label>
												</div>
											</div>
				                        </td>
			                        </tr>
			                        @endforeach
		                    </tbody>
		                </table>
		                <br>
		                <br>
		                <div class="text-right">
								<button type="submit" class="btn btn-primary">Submit Jawaban<i class="icon-arrow-right14 position-right"></i></button>
								@if($type=="update")
								<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
								@endif
						</div>
						<br>
					</div>

					<!-- /basic datatable -->					

				</div>
				<!-- /content area -->

			</div>

			
@endsection
@section('script')
	<script>
				$(document).ready(function(e){
					var respondens = new Bloodhound({
					  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
					  queryTokenizer: Bloodhound.tokenizers.whitespace,
					  remote: {
					  	cacheKey: 'search',
					    url: '{{base_url('superuser/kuesioner/search/')}}',
					    replace: function(url, query) {
				               return url + "?q=" + query;
				        },
				        filter: function(search) {
				            return $.map(search, function(data) {
				                    return {
				                        nim: data.nim,
				                        nama: data.nama,
				                        instansi: data.instansi
				                }
				            });
				        }
					  }
					});
			       $('#bloodhound .typeahead').typeahead(null, {
					  name: 'responden',
					  display: 'nama',
					  source: respondens
					});

			    });
			</script>
@endsection

