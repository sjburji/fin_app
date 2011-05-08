// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$('#new_store input[name="store[franchisee]"]:radio').live('change', function() {
    //franchise owned
    if($(this).val() == '1'){
        $('#store_franchisee_id').show(200);
    }else{
        $('#store_franchisee_id').hide(100);
    }
});

$('#new_store input[name="store[parent_id]"]:radio').live('change', function() {
    //Satellite
    if($(this).val() == '1'){
        $('#store_parent_id').show(200);
    }else{
        $('#store_parent_id').hide(100);
    }
});

$('#offices_legalentities a').live('click', function(){
   var office_id = $(this).attr('office_id');
   var offices_legalentities_div = '#offices_legalentities_div_' + office_id;
   var hide_link = '#offices_legalentities_remove_link_' + office_id;
   var show_link = '#offices_legalentities_link_' + office_id;

   $(show_link).attr('disabled', true);
   $(hide_link).attr('disabled', false);
   $(offices_legalentities_div).show(1000);
   
   return false;
});

$('#offices_legalentities_remove a').live('click', function(){
   var office_id = $(this).attr('office_id');
   var offices_legalentities_div = '#offices_legalentities_div_' + office_id;
   var hide_link = '#offices_legalentities_remove_link_' + office_id;
   var show_link = '#offices_legalentities_link_' + office_id;
   
   $(show_link).attr('disabled', false);
   $(hide_link).attr('disabled', true);
   $(offices_legalentities_div).hide(400);

   return false;
});
