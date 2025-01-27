<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑员工</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">员工管理</li>
                        <li class="breadcrumb-item active">编辑员工</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container-fluid">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <form id="register">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                            <!-- 当前表的字段 -->
                                    <div class="form-group col-md-2 offset-md-6">
                                        <h3 class="widget-title">员工注册</h3>
                                    </div>
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>账户</label>
                                        <input id="username" name="username" class="form-control"
                                               placeholder="账户">
                                    </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>密码</label>
                                        <input type="password" id="password" name="password" class="form-control"
                                               placeholder="密码">
                                    </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>重复密码</label>
                                        <input type="password" id="password1" name="password1" class="form-control"
                                               placeholder="重复密码">
                                    </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>姓名</label>
                                        <input id="name" name="name" class="form-control"
                                               placeholder="姓名">
                                    </div>
                                <div class="form-group col-md-4 offset-md-4">
                                    <label>手机号</label>
                                    <input id="phone" name="phone" class="form-control"
                                           onchange="phoneChickValue(this)"  placeholder="手机号">
                                </div>
                                <div class="form-group col-md-4 offset-md-4">
                                    <label>身份证号</label>
                                    <input id="idNumber" name="idNumber" class="form-control"
                                           onchange="idNumberChickValue(this)"  placeholder="身份证号">
                                </div>
                                   <div class="form-group col-md-4 offset-md-4">
                                       <label>性别</label>
                                       <select id="sexTypesSelect" name="sexTypes" class="form-control">
                                       </select>
                                   </div>
                                   <div class="form-group col-md-4 offset-md-4">
                                       <label>照片</label>
                                       <img id="myPhotoImg" src="" width="100" height="100">
                                       <input name="file" type="file" id="myPhotoupload"
                                              class="form-control-file">
                                       <input name="myPhoto" id="myPhoto-input" type="hidden">
                                   </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>民族</label>
                                        <input id="nation" name="nation" class="form-control"
                                               placeholder="民族">
                                    </div>
                                   <div class="form-group col-md-4 offset-md-4">
                                       <label>政治面貌</label>
                                       <select id="politicsTypesSelect" name="politicsTypes" class="form-control">
                                       </select>
                                   </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>居住地</label>
                                        <input id="residence" name="residence" class="form-control"
                                               placeholder="居住地">
                                    </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>籍贯(身份证上地址)</label>
                                        <input id="birthplace" name="birthplace" class="form-control"
                                               placeholder="籍贯(身份证上地址)">
                                    </div>
                                   <div class="form-group col-md-4 offset-md-4">
                                       <label>婚姻状况</label>
                                       <select id="marriageTypesSelect" name="marriageTypes" class="form-control">
                                       </select>
                                   </div>
                                   <div class="form-group col-md-4 offset-md-4">
                                       <label>学历</label>
                                       <select id="educationTypesSelect" name="educationTypes" class="form-control">
                                       </select>
                                   </div>
                                    <div class="form-group col-md-4 offset-md-4">
                                        <label>毕业学校</label>
                                        <input id="school" name="school" class="form-control"
                                               placeholder="毕业学校">
                                    </div>
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg col-md-4 offset-md-4">注册</button>
                                    <button id="exitBtn" type="button" class="btn btn-info btn-lg col-md-4 offset-md-4">返回</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">
</script><script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "yonghu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var bumenTypesOptions = [];
    var zhiweiTypesOptions = [];
    var sexTypesOptions = [];
    var politicsTypesOptions = [];
    var marriageTypesOptions = [];
    var educationTypesOptions = [];
    var zhuangtaiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#myPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('myPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('myPhoto-input').setAttribute('value',photoUrl);
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            debugger
            var p1 = $("#password").val();
            var p2 = $("#password1").val();
            if(p1 == null || p1=="" || p1 !=p2){
                alert("两次密码不一致");
                return;
            }
            let data = {};
            getContent();
            let value = $('#register').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            httpJson("yonghu/register", "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('id');
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.location.href="../../login.jsp";
                    } else {
                        window.location.href ="../../login.jsp";
                    }
                }else{
                    alert(res.msg);
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function bumenTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=bumen_types", "GET", {}, (res) => {
                if(res.code == 0){
                    bumenTypesOptions = res.data.list;
                }
            });
        }
        function zhiweiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhiwei_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhiweiTypesOptions = res.data.list;
                }
            });
        }
        function sexTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    sexTypesOptions = res.data.list;
                }
            });
        }
        function politicsTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=politics_types", "GET", {}, (res) => {
                if(res.code == 0){
                    politicsTypesOptions = res.data.list;
                }
            });
        }
        function marriageTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=marriage_types", "GET", {}, (res) => {
                if(res.code == 0){
                    marriageTypesOptions = res.data.list;
                }
            });
        }
        function educationTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=education_types", "GET", {}, (res) => {
                if(res.code == 0){
                    educationTypesOptions = res.data.list;
                }
            });
        }
        function zhuangtaiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuangtai_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuangtaiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationBumentypesSelect(){
            var bumenTypesSelect = document.getElementById('bumenTypesSelect');
            if(bumenTypesSelect != null && bumenTypesOptions != null  && bumenTypesOptions.length > 0 ){
                for (var i = 0; i < bumenTypesOptions.length; i++) {
                    bumenTypesSelect.add(new Option(bumenTypesOptions[i].indexName,bumenTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhiweitypesSelect(){
            var zhiweiTypesSelect = document.getElementById('zhiweiTypesSelect');
            if(zhiweiTypesSelect != null && zhiweiTypesOptions != null  && zhiweiTypesOptions.length > 0 ){
                for (var i = 0; i < zhiweiTypesOptions.length; i++) {
                    zhiweiTypesSelect.add(new Option(zhiweiTypesOptions[i].indexName,zhiweiTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationSextypesSelect(){
            var sexTypesSelect = document.getElementById('sexTypesSelect');
            if(sexTypesSelect != null && sexTypesOptions != null  && sexTypesOptions.length > 0 ){
                for (var i = 0; i < sexTypesOptions.length; i++) {
                    sexTypesSelect.add(new Option(sexTypesOptions[i].indexName,sexTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationPoliticstypesSelect(){
            var politicsTypesSelect = document.getElementById('politicsTypesSelect');
            if(politicsTypesSelect != null && politicsTypesOptions != null  && politicsTypesOptions.length > 0 ){
                for (var i = 0; i < politicsTypesOptions.length; i++) {
                    politicsTypesSelect.add(new Option(politicsTypesOptions[i].indexName,politicsTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationMarriagetypesSelect(){
            var marriageTypesSelect = document.getElementById('marriageTypesSelect');
            if(marriageTypesSelect != null && marriageTypesOptions != null  && marriageTypesOptions.length > 0 ){
                for (var i = 0; i < marriageTypesOptions.length; i++) {
                    marriageTypesSelect.add(new Option(marriageTypesOptions[i].indexName,marriageTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationEducationtypesSelect(){
            var educationTypesSelect = document.getElementById('educationTypesSelect');
            if(educationTypesSelect != null && educationTypesOptions != null  && educationTypesOptions.length > 0 ){
                for (var i = 0; i < educationTypesOptions.length; i++) {
                    educationTypesSelect.add(new Option(educationTypesOptions[i].indexName,educationTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhuangtaitypesSelect(){
            var zhuangtaiTypesSelect = document.getElementById('zhuangtaiTypesSelect');
            if(zhuangtaiTypesSelect != null && zhuangtaiTypesOptions != null  && zhuangtaiTypesOptions.length > 0 ){
                for (var i = 0; i < zhuangtaiTypesOptions.length; i++) {
                    zhuangtaiTypesSelect.add(new Option(zhuangtaiTypesOptions[i].indexName,zhuangtaiTypesOptions[i].codeIndex));
                }
            }
        }

    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->


    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var bumenTypesSelect = document.getElementById("bumenTypesSelect");
        if(bumenTypesSelect != null && bumenTypesOptions != null  && bumenTypesOptions.length > 0 ) {
            for (var i = 0; i < bumenTypesOptions.length; i++) {
                if (bumenTypesOptions[i].codeIndex == ruleForm.bumenTypes) {//下拉框value对比,如果一致就赋值汉字
                        bumenTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhiweiTypesSelect = document.getElementById("zhiweiTypesSelect");
        if(zhiweiTypesSelect != null && zhiweiTypesOptions != null  && zhiweiTypesOptions.length > 0 ) {
            for (var i = 0; i < zhiweiTypesOptions.length; i++) {
                if (zhiweiTypesOptions[i].codeIndex == ruleForm.zhiweiTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhiweiTypesSelect.options[i].selected = true;
                }
            }
        }

        var sexTypesSelect = document.getElementById("sexTypesSelect");
        if(sexTypesSelect != null && sexTypesOptions != null  && sexTypesOptions.length > 0 ) {
            for (var i = 0; i < sexTypesOptions.length; i++) {
                if (sexTypesOptions[i].codeIndex == ruleForm.sexTypes) {//下拉框value对比,如果一致就赋值汉字
                        sexTypesSelect.options[i].selected = true;
                }
            }
        }

        var politicsTypesSelect = document.getElementById("politicsTypesSelect");
        if(politicsTypesSelect != null && politicsTypesOptions != null  && politicsTypesOptions.length > 0 ) {
            for (var i = 0; i < politicsTypesOptions.length; i++) {
                if (politicsTypesOptions[i].codeIndex == ruleForm.politicsTypes) {//下拉框value对比,如果一致就赋值汉字
                        politicsTypesSelect.options[i].selected = true;
                }
            }
        }

        var marriageTypesSelect = document.getElementById("marriageTypesSelect");
        if(marriageTypesSelect != null && marriageTypesOptions != null  && marriageTypesOptions.length > 0 ) {
            for (var i = 0; i < marriageTypesOptions.length; i++) {
                if (marriageTypesOptions[i].codeIndex == ruleForm.marriageTypes) {//下拉框value对比,如果一致就赋值汉字
                        marriageTypesSelect.options[i].selected = true;
                }
            }
        }

        var educationTypesSelect = document.getElementById("educationTypesSelect");
        if(educationTypesSelect != null && educationTypesOptions != null  && educationTypesOptions.length > 0 ) {
            for (var i = 0; i < educationTypesOptions.length; i++) {
                if (educationTypesOptions[i].codeIndex == ruleForm.educationTypes) {//下拉框value对比,如果一致就赋值汉字
                        educationTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhuangtaiTypesSelect = document.getElementById("zhuangtaiTypesSelect");
        if(zhuangtaiTypesSelect != null && zhuangtaiTypesOptions != null  && zhuangtaiTypesOptions.length > 0 ) {
            for (var i = 0; i < zhuangtaiTypesOptions.length; i++) {
                if (zhuangtaiTypesOptions[i].codeIndex == ruleForm.zhuangtaiTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhuangtaiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function phoneChickValue(e){
            var this_val = e.value || 0;
            var reg=/^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("手机号不正确");
                return false;
            }
        }
        function idNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("身份证号不正确");
                return false;
            }
        }



    function exit() {
        window.location.href = "../../login.jsp";
    }
    // 表单校验
    function validform() {
        return $("#register").validate({
            rules: {
                username: "required",
                password: "required",
                name: "required",
                phone: "required",
                bumenTypes: "required",
                zhiweiTypes: "required",
                idNumber: "required",
                sexTypes: "required",
                myPhoto: "required",
                nation: "required",
                politicsTypes: "required",
                residence: "required",
                birthplace: "required",
                marriageTypes: "required",
                educationTypes: "required",
                school: "required",
                zhuangtaiTypes: "required",
            },
            messages: {
                username: "账户不能为空",
                password: "密码不能为空",
                name: "姓名不能为空",
                phone: "手机号不能为空",
                bumenTypes: "部门不能为空",
                zhiweiTypes: "职位不能为空",
                idNumber: "身份证号不能为空",
                sexTypes: "性别不能为空",
                myPhoto: "照片不能为空",
                nation: "民族不能为空",
                politicsTypes: "政治面貌不能为空",
                residence: "居住地不能为空",
                birthplace: "籍贯(身份证上地址)不能为空",
                marriageTypes: "婚姻状况不能为空",
                educationTypes: "学历不能为空",
                school: "毕业学校不能为空",
                zhuangtaiTypes: "用户状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addyonghu = window.sessionStorage.getItem("addyonghu");
        if (addyonghu != null && addyonghu != "" && addyonghu != "null") {
            window.sessionStorage.removeItem('addyonghu');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("yonghu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {

    }


    function dataBind() {


    <!--  级联表的数据回显  -->


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#username").val(ruleForm.username);
        $("#password").val(ruleForm.password);
        $("#name").val(ruleForm.name);
        $("#phone").val(ruleForm.phone);
        $("#idNumber").val(ruleForm.idNumber);
        $("#nation").val(ruleForm.nation);
        $("#residence").val(ruleForm.residence);
        $("#birthplace").val(ruleForm.birthplace);
        $("#school").val(ruleForm.school);

    }
    <!--  级联表的数据回显  -->

    //图片显示
    function showImg() {
        <!--  当前表的图片  -->
        $("#myPhotoImg").attr("src",ruleForm.myPhoto);

        <!--  级联表的图片  -->
    }


    <!--  级联表的图片  -->


    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            bumenTypesSelect();
            zhiweiTypesSelect();
            sexTypesSelect();
            politicsTypesSelect();
            marriageTypesSelect();
            educationTypesSelect();
            zhuangtaiTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationBumentypesSelect();
            initializationZhiweitypesSelect();
            initializationSextypesSelect();
            initializationPoliticstypesSelect();
            initializationMarriagetypesSelect();
            initializationEducationtypesSelect();
            initializationZhuangtaitypesSelect();
            <!--  初始化级联表的下拉框  -->

        $(".selectpicker" ).selectpicker('refresh');
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            $('#jifen').attr('readonly', 'readonly');
            //$('#money').attr('readonly', 'readonly');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>