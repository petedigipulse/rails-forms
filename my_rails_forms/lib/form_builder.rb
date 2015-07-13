class PetesFormBuilder < ActionView::Helpers::FormBuilder

	include ActionView::Helpers::TagHelper
	include ActionView::Helpers::CaptureHelper
	include ActionView::Helpers::TextHelper

	attr_accessor :output_buffer

	def text_field(attributes, options={})
		content_tag(:div, class: "row") do
			content_tag(:div, class: "col-sm-12") do 
				super(attributes, options)
			end
		end
	end


end