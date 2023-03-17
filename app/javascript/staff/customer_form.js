// 自宅住所フィールドの有効無効の関数
function toggle_home_address_fields() {
  const checked = $("input#form_inputs_home_address").prop("chcked");
  $("fieldset#home-address-fields input").prop("disabled", !checked);
  $("fieldset#home-address-fields select").prop("disabled", !checked);
}

// 勤務先フィールドの有効無効の関数
function toggle_work_address_fields() {
  const checked = $("input#form_inputs_work_address").prop("chcked");
  $("fieldset#work-address-fields input").prop("disabled", !checked);
  $("fieldset#work-address-fields select").prop("disabled", !checked);
}

$(document).on("ready turbolink.load", () => {
  toggle_home_address_fields();
  toggle_work_address_fields();
  $("input#form_inputs_home_address").on("click", () => {
    taggle_home_address_fields();
  });
  $("input#form_inputs_work_address").on("click", () => {
    taggle_work_address_fields();
  });
});