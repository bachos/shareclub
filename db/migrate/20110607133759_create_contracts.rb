class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table (:contracts, :primary_key => 'id_contract') do |t|
      t.string :owner
      t.date :fecha
      t.string :co_owner
      t.string :benef_uno
      t.string :benef_dos
      t.string :benef_tre
      t.string :ocupacion
      t.string :calle
      t.string :colonia
      t.string :delegacion
      t.string :ciudad
      t.string :estado
      t.string :cp
      t.string :tel_casa
      t.string :tel_trabajo
      t.string :tel_movil
      t.string :email
      t.string :temporada
      t.integer :vigencia
      t.string :tipo_unidad
      t.string :tipo_unidad
      t.integer :no_personas
      t.float :precio
      t.float :pago_inicial
      t.integer :no_mensual
      t.float :monto_mensual
      t.date :fecha_primer_pago
      t.float :abono_inicial
      t.string :forma_pago
      t.float :cuota_manto

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
