class ConsultasController < ApplicationController
  before_action :set_consulta, only: %i[ show edit update destroy ]

  # GET /consultas or /consultas.json
  def index
    @consultas = Consulta.all
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
    @consulta = Consulta.find(params[:id])
    # Verifica se o horário existe e não é vazio
    @consulta.horario = @consulta.horario.strftime("%H:%M") if @consulta.horario.is_a?(Time)
  end


  # POST /consultas or /consultas.json
  def create
    @consulta = Consulta.new(consulta_params)

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to consulta_url(@consulta), notice: "Consulta foi criada com sucesso." }
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
        format.html { redirect_to consulta_url(@consulta), notice: "Consulta foi atualizada com sucesso." }
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
      format.html { redirect_to consultas_url, notice: "Consulta foi deletada com sucesso." }
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
