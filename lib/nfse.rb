$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'mustache'
require 'virtus'
require 'nfse/version'
require 'nfse/base'

module Nfse
  # Envio
  Envio = Module.new
  Envio.autoload(:Lote, 'nfse/envio/lote')
  Envio.autoload(:Rps, 'nfse/envio/rps')
  Envio.autoload(:Deducao, 'nfse/envio/deducao')
  Envio.autoload(:Item, 'nfse/envio/item')
  Envio.autoload(:Prestador, 'nfse/envio/prestador')
  Envio.autoload(:Tomador, 'nfse/envio/tomador')
  Envio.autoload(:NfseEnvio, 'nfse/envio/nfse_envio')

  # Consulta Lote
  autoload(:ConsultaLote, 'nfse/consultalote')

  # Cancelamento
  Cancelamento = Module.new
  Cancelamento.autoload(:Lote, 'nfse/cancelamento/lote')
  Cancelamento.autoload(:Nota, 'nfse/cancelamento/nota')
end
