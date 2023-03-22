// 自宅住所フィールドの有効無効の関数
function toggle_home_address_fields() {
  // input#form_inputs_home_addressのチェック状態を変数「checked」に格納
  const checked = $("input#form_inputs_home_address").prop("checked");
  // fildset#home-address-fieldsのinputとselecet要素を取得してpropメソッドを使い`disabled`属性を
  // `!checked`に設定して、要素の有効/無効を切り替える
  $("fieldset#home-address-fields input").prop("disabled", !checked);
  $("fieldset#home-address-fields select").prop("disabled", !checked);
  // `fieldset#home-address-fields`を取得して`toggle`メソッドを使ってチェックボックスが
  //　オンの場合は、表示/オフの場合は非表示する。
  $("fieldset#home-address-fields").toggle(checked);
}

// 勤務先フィールドの有効無効の関数
function toggle_work_address_fields() {
  const checked = $("input#form_inputs_work_address").prop("checked");
  $("fieldset#work-address-fields input").prop("disabled", !checked);
  $("fieldset#work-address-fields select").prop("disabled", !checked);
  $("fieldset#work-address-fields").toggle(checked);
}

$(document).on("ready turbolinks:load", () => {
  toggle_home_address_fields();
  toggle_work_address_fields();
  $("input#form_inputs_home_address").on("click", () => {
    toggle_home_address_fields();
  });
  $("input#form_inputs_work_address").on("click", () => {
    toggle_work_address_fields();
  });
});