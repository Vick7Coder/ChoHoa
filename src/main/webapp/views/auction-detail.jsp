<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--
Begin Content
-->
<div class="content">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Library</a></li>
            <li class="breadcrumb-item active" aria-current="page">Data</li>
        </ol>
    </nav>
    <h2 class="text-heading">THÔNG TIN SẢN PHẨM</h2>
    <div class="container m-5">
        <div class="row d-flex justify-content-left">
            <div class="col-xl-5">
                <img src="img/hoatulip.jpg " class="img-fluid img-thumbnail" alt="">
            </div>
            <div class="col-xl-7">
                <div class="card-header mt-3 border-dark mb-3 shadow" style="font-size: 15px;font-weight: bold;">
                    <h3 class="card-title">Tên gọi</h3>
                    <div class="card-body text-dark">
                        <h5 class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</h5>
                        <div class="card-title mt-5">
                            <div class="rounded shadow text-center mb-3 mt-3" style="background: white">
                                <p class="mb-0 font-weight-bold text-uppercase">Thời gian còn lại</p>
                                <table class="table table-borderless">
                                    <thead>
                                    <tr>
                                        <th scope="col">Ngày</th>
                                        <th scope="col">Giờ</th>
                                        <th scope="col">Phút</th>
                                        <th scope="col">Giây</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>4</td>
                                        <td>12</td>
                                        <td>23</td>
                                        <td>11</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-title">
                            <h3>
                            <span class="badge badge-success ">Trạng thái</span>
                            <span >Đang diễn ra</span>
                            </h3>
                        </div>
                        <div class="card-title">
                            <h3>
                                <span class="badge badge-success">Thông tin đấu giá</span>
                                <span>7 người tham gia</span>

                            </h3>
                        </div>
                        <div class="card-title">
                            <h3>
                            <span class="badge badge-success">Giá khởi điểm</span>
                            <span>100.000.000</span>
                            <span>VND</span>
                            </h3>
                        </div>
                    </div>
                    <div class="float-right mt-5">
                        <button type="button" class="btn btn-danger" onclick="openDetail()">Tham gia</button>
                        <button type="button" class="btn btn-success ml-3" onclick="openPayment()">Giao dịch ngay</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-lg m-5">
        <div class="card border-light mb-3 shadow" style="min-width: 18rem;">
            <div class="card-header">Những người đang tham gia</div>
            <div class="card-body text-dark">
                <table class="table ">
                    <thead>
                    <tr>
                        <th scope="col">Số thứ tự</th>
                        <th scope="col">Tên người tham gia</th>
                        <th scope="col">Giá đặt</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>100.000.000 VNĐ</td>

                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>100.000.000 VNĐ</td>

                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td >Larry the Bird</td>
                        <td>100.000.000 VNĐ</td>

                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <div class="container m-5">
        <div class="card border-dark mb-3 shadow" style="min-width: 18rem;">
            <div class="card-header">Mô tả sản phẩm</div>
            <div class="card-body text-dark">
                <table class="table table-borderless">

                    <tbody>
                    <tr>
                        <th scope="row">Trạng thái</th>
                        <td>Mới</td>

                    </tr>
                    <tr>
                        <th scope="row">Số lượng</th>
                        <td>1</td>

                    </tr>
                    <tr>
                        <th scope="row">Thời gian bắt đầu</th>
                        <td>25-05-2022 10:10:10</td>

                    </tr>
                    <tr>
                        <th scope="row">Thời gian kết thúc</th>
                        <td>25-05-2022 10:10:10</td>

                    </tr>
                    <tr>
                        <th scope="row">Giá khởi điểm</th>
                        <td>100.000.000 VND</td>
                    </tr>
                    <tr>
                        <th scope="row">Người đăng</th>
                        <td>Nguyễn Văn A</td>
                    </tr>
                    <tr>
                        <th scope="row">Thông tin liên hệ</th>
                        <td>nguyenvana@gmail</td>
                    </tr>
                    <tr>
                        <th scope="row">Ghi chú</th>
                        <td>Không</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <h2 class="text-heading">TÀI SẢN TƯƠNG TỰ</h2>
    <div class="container m-5">
        <div class="card-deck">
            <div class="card shadow">
                <div class="image-product">
                    <img src="./img/hoabo3.jpg" class="card-img-top image" alt="...">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <div class="card-text">
                        <p>Some quick example text to build on the card.</p>
                    </div>
                    <button type="button" class="btn btn-danger float-right">Tham gia</button>
                </div>
            </div>
            <div class="card shadow">
                <div class="image-product">
                    <img src="./img/hoabo3.jpg" class="card-img-top image" alt="...">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <div class="card-text">
                        <p>Some quick example text to build on the card.</p>
                    </div>
                    <button type="button" class="btn btn-danger float-right">Tham gia</button>
                </div>
            </div>
            <div class="card shadow">
                <div class="image-product">
                    <img src="./img/hoabo3.jpg" class="card-img-top image" alt="...">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <div class="card-text">
                        <p>Some quick example text to build on the card title and .</p>
                    </div>
                    <button type="button" class="btn btn-danger float-right">Tham gia</button>
                </div>
            </div>
            <div class="card shadow">
                <div class="image-product">
                    <img src="./img/hoabo3.jpg" class="card-img-top image" alt="...">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <div class="card-text">
                        <p>Some quick example text to build on the card.</p>
                    </div>
                    <button type="button" class="btn btn-danger float-right ">Tham gia</button>
                </div>
            </div>
        </div>

    </div>

</div>

<!--
End Content
-->