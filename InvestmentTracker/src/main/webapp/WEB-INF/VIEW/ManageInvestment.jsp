<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8"><script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>  
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script type="text/javascript">  
window.onload = function() {
var options = {
	exportEnabled: true,
	animationEnabled: true,
	legend:{
		horizontalAlign: "right",
		verticalAlign: "center"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		toolTipContent: "<b>{name}</b>: ${y} (#percent%)",
		indexLabel: "{name}",
		legendText: "{name} (#percent%)",
		indexLabelPlacement: "inside",
		dataPoints: [
			{ y: 6566.4, name: "Housing" },
			{ y: 2599.2, name: "Food" },
			{ y: 1231.2, name: "Fun" },
			{ y: 1368, name: "Clothes" },
			{ y: 684, name: "Others"},
			{ y: 1231.2, name: "Utilities" }
		]
	}]
};
$("#chartContainer").CanvasJSChart(options);
}
$(document).ready(function(){
        $(".add").click(function(){
            var Rate = $("#Rate").val();
            var PurchasePrice = $("#PurchasePrice").val();
            var SellingPrice = $("#SellingPrice").val();
            var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + Rate + "</td><td>" + PurchasePrice + "</td><td>" + SellingPrice + "</td></tr>";
            $("table tbody").append(markup);
        });
        
        // Find and remove selected table rows
        $(".delete").click(function(){
            $("table tbody").find('input[name="record"]').each(function(){
            	if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });
    });    
</script>
<style type="text/css">
section
{

margin-top:100px;

}

.container-lg
{
   margin-left:20px;
   margin-top:20px;
   margin-right:20px;
   margin-bottom:20px;
   width:1000px;
    background: #F5F7FA;
    color: #0000FF;
}
.media
{
  position: absolute;
  right:40px;
  margin-top:10px;
}
.btn-success
{
position: absolute;
  top:400px;
  right:200px;
  margin-bottom:100px;
}
body {
    color: #0000FF;
    background: #F5F7FA;
    font-family: 'Open Sans', sans-serif;
}
.table-wrapper {
    width: 100%;
    margin: 30px auto;
    background: #fff;
    padding: 20px;	
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
}
.table-title h2 {
    margin: 6px 0 0;
    font-size: 22px;
}
.table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
}
.table-title .add-new i {
    margin-right: 4px;
}
table.table {
    table-layout: fixed;
    width: 100%;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table th:last-child {
    width: 100px;
}
table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
}    
table.table td a.add {
    color: #27C46B;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}
table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
}    
table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
}
table.table .form-control.error {
    border-color: #f50000;
}
table.table td .add {
    display: none;
}
</style>
</head>
<body>
<header>
<div class="media" style="float:right">
  <div class="media-left media-top" >
  <font>${display}</font>
    <img src="<%=request.getContextPath()%>/img/user-512.png" class="media-object" style="width:50px">
  </div>
</div>
</header>
<section>

<div class="container-lg">
<form class="form-inline" style="padding-top:20px">
  <label for="rate">Rate</label>
  <input type="text" class="form-control w-5" placeholder="0.00" id="rate">
  <label for="pwd">Purchase Price</label>
  <input type="text" class="form-control w-5" placeholder="0.00" id="purchaseprice">
  <label for="pwd">Purchase Price</label>
  <input type="text" class="form-control w-5" placeholder="0.00" id="sellingprice">
  <div>&nbsp;&nbsp;&nbsp;</div>
  <input type="submit" class="add">
</form>
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
            <aside>
      <div class="row">
                </div>
            </div>
            <br/><br/>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Amount Invested</th>
                        <th>Gain/Loss</th>
                        <th>Current Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" class="form-control" name="Date"></td>
                        <td><input type="text" class="form-control" name="AmountInvested"></td>
                        <td><input type="text" class="form-control" name="GainLosss"></td>
                        <td><input type="text" class="form-control" name="CurrentPrice"></td>
                        <td>
                            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div> 
<div id="chartContainer" style="height: 370px; width: 250px; float: right"></div>
</section>
<footer>
</footer>
</body>
</html>