class PdfIntegration
  def initialize
    @pdf = Prawn::Document.new 
  end
  
  def build_text collection
    @pdf.text 'Nomes Buscados na API do Twitter'
    collection.each do |element|
      @pdf.text "Name: #{element.user_name} | Hora em que foi realizada: #{element.created_at}"
    end
  end
  
  def render
    @pdf.render
  end

end