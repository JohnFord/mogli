module Mogli
  class Client
    module Book

      
      def book(id)
        get_and_map(id,Mogli::Book)
      end
    end
  end
end
