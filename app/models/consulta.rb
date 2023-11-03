class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, presence: true
  validates :horario, presence: true
  validates :paciente_id, presence: true
  validates :medico_id, presence: true
  validates :horario, format: { with: /\A\d{2}:\d{2}\z/, message: "O horário deve estar no formato HH:MM" }

  # Validações customizadas
  validate :data_e_horario_valido
  validate :consulta_ocupada

  private

  def data_e_horario_valido
    return unless data.present? && horario.present?

    hora, minuto = horario.split(':').map(&:to_i)
    consulta_marcada = DateTime.new(data.year, data.month, data.day, hora, minuto)
    if consulta_marcada < Time.zone.now
      errors.add(:base, "Horário já passou")
    end
  end

  def consulta_ocupada
    return unless medico && data.present? && horario.present?

    if medico.consultas.exists?(data: data, horario: horario)
      errors.add(:base, "Horário já ocupado por outras consultas")
    end
  end
end
