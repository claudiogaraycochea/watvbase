function renderPreview(data){
    let style_background = 'background-color: '+data.background_color+';';
    let style_background_image = 'background-image: url('+data.background_image+');background-size: cover; background-position: center';
    
    let logo_image = '';
    if (data.logo_image){
        logo_image = '<div class="render-row"><img src="'+data.logo_image+'" class="render-logo"></div>';
    }

    let product_image = '';
    if (data.product_image){
        product_image = '<div class="render-row"><img src="'+data.product_image+'" class="render-product"></div>';
    }
    
    let style_font_family = 'font-family: "'+data.font_family+'" !important;';
    let style_font_color = 'color: '+data.font_color+';';
    let style_button_background_color = 'background-color: '+data.button_background_color+';';
    let style_button_font_color = 'color:'+data.button_font_color+';';
    
    let title = '';
    if(data.title) {
        title = '<div class="render-row"><div class="render-title">'+data.title+'</div></div>';
    }

    let subtitle = '';
    if(data.subtitle){
        subtitle = '<div class="render-row"><div class="render-subtitle">'+data.subtitle+'</div></div>';
    }
   
    let button = '<button button_url="'+data.button_url+'" class="render-button" style="'+style_button_background_color+style_button_font_color+'"><i class="icon-buynow mr-10"></i> '+data.button_label+'</button>';

    let render_data = '<div class="render-content" > \
                '+logo_image+' \
                '+product_image+'\
                '+title+'\
                '+subtitle+'\
                <div class="link-wrapper">'+button+'</div> \
            </div>';

    $('#render-data').html(render_data);
    $('#module-preview').attr('style',style_background+style_font_family+style_font_color+style_background_image);

    loadEvent();
}

function loadEvent(){
    $('.render-button').on('click',function(){
        window.open($(this).attr('button_url'));
    })
}

function resizePanel(){
    $('#panel-interactivity').attr('style','height: '+($(window).height()-155)+'px; padding-bottom: 10px;' );
}

$(window).resize(function() {
    resizePanel();
});

function printRun(data){
    $('#data_title').val(data.title);
    $('#data_subtitle').val(data.subtitle);
    $('#data_button_label').val(data.button_label);
    $('#data_button_url').val(data.button_url);
    $('#data_logo_image').val(data.logo_image);
    $('#data_product_image').val(data.product_image);
    $('#data_background_image').val(data.background_image);
    $('#data_background_color').val(data.background_color);
    $('#data_font_family').val(data.font_family);
    $('#data_font_color').val(data.font_color);
    $('#data_button_background_color').val(data.button_background_color);
    $('#data_button_font_color').val(data.button_font_color);
    fontPredef(data.font_family);
}

function getRun(){
    let postData='website_id='+instant.getLocalVar('website_id');
    $.ajax({
        url: path_api+'getRun/',
        type: 'GET',
        dataType: "json",
        data: postData,
        success: function(data) {
            data = JSON.parse(data.run_src);
            printRun(data);
            renderPreview(data);
        }
    });
}

function refreshFillData(){
    let data = {
        title: $('#data_title').val(),
        subtitle: $('#data_subtitle').val(),
        button_label: $('#data_button_label').val(),
        button_url: $('#data_button_url').val(),
        logo_image: $('#data_logo_image').val(),
        product_image: $('#data_product_image').val(),
        background_image: $('#data_background_image').val(),
        background_color: $('#data_background_color').val(),
        font_family: $('#data_font_family').val(),
        font_color: $('#data_font_color').val(),
        button_background_color: $('#data_button_background_color').val(),
        button_font_color: $('#data_button_font_color').val(),
    }
    return data;
}

function themePredef(){
    $('#theme_predef').append('<option>Choose</option>');
    $('#theme_predef').append('<option value="#191919,#ffffff,#20de87,#ffffff">Dark and Green</option>');
    $('#theme_predef').append('<option value="#333647,#ffffff,#0080ff,#ffffff">Dark and Blue</option>');
    $('#theme_predef').append('<option value="#ffffff,#222222,#0080ff,#ffffff">White and Blue</option>');
    $('#theme_predef').append('<option value="#fb3434,#ffffff,#3c3231,#ffffff">Red</option>');
    $('#theme_predef').append('<option value="#ffffff,#222222,#551483,#ffffff">Violet</option>');
    $('#theme_predef').append('<option value="#00e17a,#ffffff,#43475f,#ffffff">Green</option>');
    $('#theme_predef').append('<option value="#ffff00,#4c4c4c,#0080ff,#ffffff">Yellow</option>');
    $('#theme_predef').append('<option value="#0080ff,#ffffff,#0080ff,#ffffff">Blue</option>');
}

function isFont(font_predef,font_family){
    if(font_predef===font_family) {
        return 'selected';
    }
    return '';
}

function fontPredef(font_family){
    $('#font_predef').append('<option value="Open Sans" '+isFont('Open Sans',font_family)+'>Open Sans</option>');
    $('#font_predef').append('<option value="Roboto" '+isFont('Roboto',font_family)+'>Roboto</option>');
    $('#font_predef').append('<option value="Ubuntu" '+isFont('Ubuntu',font_family)+'>Ubuntu</option>');
    $('#font_predef').append('<option value="Anton" '+isFont('Anton',font_family)+'>Anton</option>');
    $('#font_predef').append('<option value="Bitter" '+isFont('Bitter',font_family)+'>Bitter</option>');
    $('#font_predef').append('<option value="Fjalla One" '+isFont('Fjalla One',font_family)+'>Fjalla One</option>');   
}

$(document).ready(function(){
    getRun();
    themePredef();
    
    let module_url = 'https://modules.weband.tv/'+instant.getLocalVar('website_template')+'/'+instant.getLocalVar('website_id');
    $('#module_url').html(module_url);
    $('#module_url_input').val(module_url);

    $('#btn_module_url').on('click', function(){
        var copyTextarea = document.querySelector('#module_url_input');
        copyTextarea.focus();
        copyTextarea.select();

        try {
            var successful = document.execCommand('copy');
            var msg = successful ? 'successful' : 'unsuccessful';
            console.log('Copying text command was ' + msg);
        } catch (err) {
            console.log('Oops, unable to copy');
        }
    });

    $('.input-change').on('change',function() {
        let data = refreshFillData();
        renderPreview(data);
    });

    $('.input-change').on('keyup',function() {
        let data = refreshFillData();
        renderPreview(data);
    });

    $('#form-data').on('submit', function (e) {
        e.preventDefault();
        let data = refreshFillData();
        let postData='data='+JSON.stringify(data)+'&website_id='+instant.getLocalVar('website_id')+'&user_id='+instant.getLocalVar('user_id')+'&user_token='+instant.getLocalVar('user_token');
        $.ajax({
            url: path_api+'setRun/',
            type: 'POST',
            dataType: "json",
            data: postData,
            success: function(data) {
                if(data.result=='true'){
                    $('#form-data #notification').html('<div class="alert alert-success">The changes has been updated.</div>');
                }
            }
        });
    });

    $('#file_website_background').change(function() {
        instant.loading('.website-image-background',true);
        let file_data = this.files[0];
        let form_data = new FormData();    
        let user_id = instant.getLocalVar('user_id');
        let user_token = instant.getLocalVar('user_token');
        let website_id = instant.getLocalVar('website_id');

        form_data.append("file_background", file_data);
        form_data.append("website_id",website_id);
        form_data.append("user_id",user_id);
        form_data.append("user_token",user_token);

        $('#uploading-background-notification').html('<div class="small text-success">Uploading image...</div>');

        $.ajax({
            url: "modules/websitebuynow/upload_background.php",
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data, 
            type: 'post',
            success: function(res){
                instant.loading('.website-image-background',false);
                if(res.filename!=''){
                    $('#data_background_image').val(res.website_background);
                    let data = refreshFillData();
                    renderPreview(data);
                    $('#uploading-background-notification').html('');
                }
                else {
                    $('#uploading-background-notification').html('<div class="small text-danger">The file size exceeds the limit allowed.</div>');
                }
            }
        })
    });

    $('#file_website_logo').change(function() {
        instant.loading('.website-image-logo',true);
        let file_data = this.files[0];
        let form_data = new FormData();    
        let user_id = instant.getLocalVar('user_id');
        let user_token = instant.getLocalVar('user_token');
        let website_id = instant.getLocalVar('website_id');

        form_data.append("file_logo", file_data);
        form_data.append("website_id",website_id);
        form_data.append("user_id",user_id);
        form_data.append("user_token",user_token);

        $('#uploading-logo-notification').html('<div class="small text-success">Uploading image...</div>');

        $.ajax({
            url: "modules/websitebuynow/upload_logo.php",
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data, 
            type: 'post',
            success: function(res){
                instant.loading('.website-image-logo',false);
                if(res.filename!=''){
                    $('#data_logo_image').val(res.website_logo);
                    let data = refreshFillData();
                    renderPreview(data);
                    $('#uploading-logo-notification').html('');
                }
                else {
                    $('#uploading-logo-notification').html('<div class="small text-danger">The file size exceeds the limit allowed.</div>');
                }
            }
        })
    });

    $('#file_website_product').change(function() {
        instant.loading('.website-image-product',true);
        let file_data = this.files[0];
        let form_data = new FormData();    
        let user_id = instant.getLocalVar('user_id');
        let user_token = instant.getLocalVar('user_token');
        let website_id = instant.getLocalVar('website_id');

        form_data.append("file_product", file_data);
        form_data.append("website_id",website_id);
        form_data.append("user_id",user_id);
        form_data.append("user_token",user_token);

        $('#uploading-product-notification').html('<div class="small text-success">Uploading image...</div>');

        $.ajax({
            url: "modules/websitebuynow/upload_product.php",
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data, 
            type: 'post',
            success: function(res){
                instant.loading('.website-image-product',false);
                if(res.filename!=''){
                    $('#data_product_image').val(res.website_product);
                    let data = refreshFillData();
                    renderPreview(data);
                    $('#uploading-product-notification').html('');
                }
                else {
                    $('#uploading-product-notification').html('<div class="small text-danger">The file size exceeds the limit allowed.</div>');
                }
            }
        })
    });

    $('#theme_predef').on('change',function() {
        let style_list = $('#theme_predef').val();
        style_list = style_list.split(",");
        $('#data_background_color').val(style_list[0]);
        $('#data_font_color').val(style_list[1]);
        $('#data_button_background_color').val(style_list[2]);
        $('#data_button_font_color').val(style_list[3]);
        let data = refreshFillData();
        renderPreview(data);
    });

    $('#font_predef').on('change',function() {
        let font_predef= $('#font_predef').val();
        $('#data_font_family').val(font_predef);
        let data = refreshFillData();
        renderPreview(data);
    });

    $('#btn-delete-logo').on('click', function(){
        $('#data_logo_image').val('');
        let data = refreshFillData();
        renderPreview(data);
    });

    $('#btn-delete-product').on('click', function(){
        $('#data_product_image').val('');
        let data = refreshFillData();
        renderPreview(data);
    });

    $('#btn-delete-background').on('click', function(){
        $('#data_background_image').val('');
        let data = refreshFillData();
        renderPreview(data);
    });
});