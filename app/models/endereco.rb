class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, presence: true, length: { is: 8 }, numericality: { only_integer: true }
  validates :cidade, presence: true, length: { minimum: 3 }, format: { with: /\A[A-Za-zÀ-ÖØ-öø-ÿ\s]+\z/, message: "deve conter apenas letras e espaços" }
  validates :bairro, presence: true, length: { minimum: 5 }, format: { with: /\A[A-Za-zÀ-ÖØ-öø-ÿ\s]+\z/, message: "deve conter apenas letras e espaços" }
  validates :logradouro, presence: true, length: { minimum: 3 }
  validates :complemento, presence: true, length: { minimum: 3 }
end
