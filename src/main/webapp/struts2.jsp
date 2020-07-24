<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Demo</title>
<link href="css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
</head>

<body>
	<main>
		<!-- Form mua sản phẩm -->
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<!-- Tiêu đề -->
						<div class="card-header">
							<h1 class="text-center font-weight-bolder my-4"
								style="font-family: Georgia, 'Times New Roman', Times, serif;">BAKERY
								DEMO</h1>
						</div>
						<!-- Nội dung -->
						<div class="card-body">
							<form action="checkout" method="post"
								onSubmit="if(!confirm('Bạn xác nhận mua sản phẩm này?')){return false;}">
								<div class="form-row">
									<!-- Thông tin loại sản phẩm -->
									<div class="form-group row col-sm-7">
										<label class="col-sm-12 col-form-label font-weight-bold"
											for="productName">Loại bánh mì:</label> <select
											class="btn btn-default" id="productName" name="name">
											<option id="option1" value="Bánh mì thịt">Bánh mì
												thịt</option>
											<option value="Bánh mì không" selected="selected">Bánh
												mì không</option>
											<option value="Bánh mì trứng chiên">Bánh mì trứng
												chiên</option>
											<option value="Bánh mì cá">Bánh mì cá</option>
											<option value="Bánh mì tùy chọn">Bánh mì tùy chọn</option>
										</select>
									</div>
									<!-- Thông tin số lương -->
									<div class="form-group row col-sm-5">
										<label class="col-sm-8 col-form-label font-weight-bold"
											for="productQuantity">Số lượng:</label>
										<div class="col-sm-12">
											<input class="form-control" type="number"
												id="productQuantity" name="quantity" min="1" max="500"
												value="1" />
										</div>
									</div>
								</div>
								<!-- Thông tin nguyên liệu -->
								<div class="form-group row">
									<label class="col-sm-12 col-form-label font-weight-bold"
										for="productMaterials">Thành phần nguyên liệu</label>
									<div class="col-sm-12">
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline1" name="egg" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline1">Trứng chiên</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline2" name="beef" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline2">Chả bò</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline3" name="salmon" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline3">Cá hồi</label>
														</div>
													</th>
												</tr>
												<tr>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline4" name="floss" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline4">Chà bông</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline5" name="roll" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline5">Nem</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline6" name="vegetable"
																onchange="setType()" checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline6">Rau-dưa</label>
														</div>
													</th>
												</tr>
												<tr>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline7" name="pork" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline7">Chả lụa</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline8" name="meat" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal"
																for="defaultInline8">Thịt</label>
														</div>
													</th>
													<th>
														<div
															class="custom-control custom-checkbox custom-control-inline">
															<input type="checkbox" class="custom-control-input"
																id="defaultInline9" name="spice" onchange="setType()"
																checked="checked"> <label
																class="custom-control-label font-weight-normal   "
																for="defaultInline9">Gia vị</label>
														</div>
													</th>
												</tr>
											</tbody>
										</table>
										<!-- Nút checkout -->
										<div class="form-group mt-4 mb-0">
											<s:submit class="btn btn-primary btn-block"
												value="Mua bánh mì" />
										</div>
									</div>

								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End form mua sản phẩm -->
		<!-- Danh sách sản phẩm đã bán -->
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable">
					<thead class="thead-light">
						<tr>
							<th>No.</th>
							<th>Thời điểm bán</th>
							<th>Loại bánh mì</th>
							<th>Thành phần nguyên liệu</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Tổng tiền</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="products" id="product">
							<tr>
								<td><s:property value="#product.id" /></td>
								<td><s:property value="#product.timeOfSale" /></td>
								<td><s:property value="#product.name" /></td>
								<td><s:property value="#product.materials" /></td>
								<td><s:property value="#product.quantity" /></td>
								<td><s:property value="#product.price" /></td>
								<td><s:property value="#product.totalCost" /></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</main>
	<!-- End main -->
	<!-- Footer -->
	<footer class="py-4 bg-light mt-auto">
		<div class="container-fluid">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; Foundation team</div>
				<div>
					<a href="#">Privacy Policy</a> &middot; <a href="#">Terms &amp;
						Conditions</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
	<script src="assets/demo/datatables-demo.js"></script>

	<script>
		function setType() {
			var egg = $("#defaultInline1").prop("checked");
			var floss = $("#defaultInline4").prop("checked");
			var pork = $("#defaultInline7").prop("checked");
			var beef = $("#defaultInline2").prop("checked");
			var roll = $("#defaultInline5").prop("checked");
			var ham = $("#defaultInline8").prop("checked");
			var salmon = $("#defaultInline3").prop("checked");
			var vegetable = $("#defaultInline6").prop("checked");
			var spice = $("#defaultInline9").prop("checked");

			if (egg && floss && pork && beef && ham && roll && salmon
					&& vegetable && spice) {
				alert("Chỉ được chọn tối đa 8 thành phần");
				$("#defaultInline1").prop("checked", false);
				$("#defaultInline2").prop("checked", false);
				$("#defaultInline3").prop("checked", false);
				$("#defaultInline4").prop("checked", false);
				$("#defaultInline5").prop("checked", false);
				$("#defaultInline6").prop("checked", false);
				$("#defaultInline7").prop("checked", false);
				$("#defaultInline8").prop("checked", false);
				$("#defaultInline9").prop("checked", false);
			} else if (!egg && !floss && !pork && !beef && !ham && !roll
					&& !salmon && !vegetable && !spice) {
				$("#productName").val("Bánh mì không");
			} else if (!egg && !floss && !pork && !beef && !ham && !roll
					&& salmon && vegetable && spice) {
				$("#productName").val("Bánh mì cá");
			} else if (egg && !floss && !pork && !beef && !ham && !roll
					&& !salmon && vegetable && spice) {
				$("#productName").val("Bánh mì trứng chiên");
			} else if (!egg && !floss && ham && !roll && !salmon && vegetable
					&& spice) {
				if (pork && beef) {
					$("#productName").val("Bánh mì tùy chọn");
				} else if (pork || beef) {
					$("#productName").val("Bánh mì thịt");
				}
			} else {
				$("#productName").val("Bánh mì tùy chọn");
			}
		}
	</script>
</body>

</html>