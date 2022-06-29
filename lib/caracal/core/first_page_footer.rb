require 'caracal/core/models/first_page_footer_model'
require 'caracal/errors'


module Caracal
  module Core

    # This module encapsulates all the functionality related to adding a
    # footer on only first page of the document.
    #
    module FirstPageFooter
      def self.included(base)
        base.class_eval do

          #-------------------------------------------------------------
          # Public Methods
          #-------------------------------------------------------------

          def first_page_footer(*args, &block)
            options = Caracal::Utilities.extract_options!(args)

            model = Caracal::Core::Models::FirstPageFooterModel.new(options, &block)

            @first_page_footer_content = model

            model
          end

        end
      end
    end
  end
end 