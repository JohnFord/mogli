module Mogli
  class Client
    module Video

      
      def video(id)
        get_and_map(id,Mogli::Video)
      end
    end
  end
end
