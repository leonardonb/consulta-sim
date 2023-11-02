class ConsultasController < ApplicationController
  before_action :set_consulta, only: %i[ show edit update destroy ]

  # GET /consultas or /consultas.json
  def index
    @consultas = if params[:search_data].present?
                   search_consultas
                 else
                   Consulta.all
                 end
  end

  # GET /consultas/1 or /consultas/1.json
  def show
  end

  # GET /consultas/new
  def new
    @consulta = Consulta.new
  end

  # GET /consultas/1/edit
  def edit
  end

  # POST /consultas or /consultas.json
  def create
    @consulta = Consulta.new(consulta_params)

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to consulta_url(@consulta), notice: "Consulta was successfully created." }
        format.json { render :show, status: :created, location: @consulta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultas/1 or /consultas/1.json
  def update
    respond_to do |format|
      if @consulta.update(consulta_params)
        format.html { redirect_to consulta_url(@consulta), notice: "Consulta was successfully updated." }
        format.json { render :show, status: :ok, location: @consulta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas/1 or /consultas/1.json
  def destroy
    @consulta.destroy

    respond_to do |format|
      format.html { redirect_to consultas_url, notice: "Consulta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta
      @consulta = Consulta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consulta_params
      params.require(:consulta).permit(:data, :horario, :paciente_id, :medico_id)
    end
end
