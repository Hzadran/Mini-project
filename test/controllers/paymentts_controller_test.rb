require 'test_helper'

class PaymenttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentt = paymentts(:one)
  end

  test "should get index" do
    get paymentts_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentt_url
    assert_response :success
  end

  test "should create paymentt" do
    assert_difference('Paymentt.count') do
      post paymentts_url, params: { paymentt: { Amount: @paymentt.Amount, R_fee: @paymentt.R_fee, Total_fess: @paymentt.Total_fess, cheque_id: @paymentt.cheque_id, discount_id: @paymentt.discount_id, pay_date: @paymentt.pay_date, student_id: @paymentt.student_id } }
    end

    assert_redirected_to paymentt_url(Paymentt.last)
  end

  test "should show paymentt" do
    get paymentt_url(@paymentt)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentt_url(@paymentt)
    assert_response :success
  end

  test "should update paymentt" do
    patch paymentt_url(@paymentt), params: { paymentt: { Amount: @paymentt.Amount, R_fee: @paymentt.R_fee, Total_fess: @paymentt.Total_fess, cheque_id: @paymentt.cheque_id, discount_id: @paymentt.discount_id, pay_date: @paymentt.pay_date, student_id: @paymentt.student_id } }
    assert_redirected_to paymentt_url(@paymentt)
  end

  test "should destroy paymentt" do
    assert_difference('Paymentt.count', -1) do
      delete paymentt_url(@paymentt)
    end

    assert_redirected_to paymentts_url
  end
end
