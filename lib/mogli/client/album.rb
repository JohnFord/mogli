module Mogli
  class Client
    module Album

      
      def album(id)
        get_and_map(id,Mogli::Album)
      end
    end
  end
end
