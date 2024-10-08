class Paciente < ApplicationRecord
  has_many :consultas, dependent: :destroy
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco
  #attr_accessor :email

  validates :nome, presence: true, length: { minimum: 3 }, format: { with: /\A[^0-9]+\z/}
  validates :data_nasc, presence: true, inclusion: { in: Date.new(1900)..Date.current }
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d+\z/, message: "deve conter apenas dígitos numéricos" }
  validates :email, presence: true, length: { maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: true }
  validates :telefone, presence: true, length: { minimum: 11 }, numericality: { only_integer: true }

end