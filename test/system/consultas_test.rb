require "application_system_test_case"

class ConsultasTest < ApplicationSystemTestCase
  setup do
    @consulta = consultas(:one)
  end

  test "visiting the index" do
    visit consultas_url
    assert_selector "h1", text: "Consultas"
  end

  test "should create consulta" do
    visit consultas_url
    click_on "New consulta"

    fill_in "Data", with: @consulta.data
    fill_in "Horario", with: @consulta.horario
    fill_in "Medico", with: @consulta.medico_id
    fill_in "Paciente", with: @consulta.paciente_id
    click_on "Create Consulta"

    assert_text "Consulta was successfully created"
    click_on "Back"
  end

  test "should update Consulta" do
    visit consulta_url(@consulta)
    click_on "Edit this consulta", match: :first

    fill_in "Data", with: @consulta.data
    fill_in "Horario", with: @consulta.horario
    fill_in "Medico", with: @consulta.medico_id
    fill_in "Paciente", with: @consulta.paciente_id
    click_on "Update Consulta"

    assert_text "Consulta was successfully updated"
    click_on "Back"
  end

  test "should destroy Consulta" do
    visit consulta_url(@consulta)
    click_on "Destroy this consulta", match: :first

    assert_text "Consulta was successfully destroyed"
  end
end
