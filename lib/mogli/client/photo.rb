module Mogli
  class Client
    module Photo

      
      def photo(id)
        get_and_map(id,Mogli::Photo)
      end
    end
  end
end
