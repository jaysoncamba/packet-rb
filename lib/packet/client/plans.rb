module Packet
  class Client
    module Plans
      def list_plans(*args)
        get('plans', *args).body['plans'].map { |p| Packet::Plan.new(p, self) }
      end

      def list_project_plans(project_id, *args)
        get("plans/#{project_id}/devices", *args).body['plans'].map { |p| Packet::Plan.new(p, self) }
      end
    end
  end
end
