(function(){$(function(){return $(document).on("focus",".datepicker:not(.hasDatepicker)",function(){return $(this).datepicker({dateFormat:"yy-mm-dd"})}),$(".clear_filters_btn").click(function(){return window.location.search=""}),$(".dropdown_button").popover(),$("#q_search").submit(function(){return $(this).find(":input").filter(function(){return this.value===""}).prop("disabled",!0)})})}).call(this);