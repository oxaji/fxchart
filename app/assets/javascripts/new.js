$(document).on('click',function(){
  $(".form").validate({
    rules: {
        "chart_name" :{required: true}

      },

    messages: {
        "chart_name":{required: "入力してください"}

    }
  });
});