module Packet
  class Client
    module Facilities
      def list_facilities(*args)
        get('facilities', *args).body['facilities'].map { |p| Packet::Facility.new(p, self) }
      end

      def list_project_facilities(project_id, *args)
        get("projects/#{project_id}/facilities", *args).body['facilities'].map { |p| Packet::Facility.new(p, self) }
      end
    end
  end
end
