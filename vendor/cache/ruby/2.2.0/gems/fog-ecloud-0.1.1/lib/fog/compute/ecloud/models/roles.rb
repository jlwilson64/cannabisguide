require File.expand_path("../role", __FILE__)

module Fog
  module Compute
    class Ecloud
      class Roles < Fog::Ecloud::Collection
        identity :href

        model Fog::Compute::Ecloud::Role

        def all
          data = service.get_roles(href).body
          if data[:OrganizationRole]
            load(data[:OrganizationRole])
          else
            r_data = []
            data[:EnvironmentRoles][:EnvironmentRole].each do |d|
              d[:Environment][:EnvironmentName] = d[:Environment][:name]
              d[:Environment] = d[:Environment].merge(d[:Role]) if d[:Role]
              r_data << d[:Environment]
            end
            load(r_data)
          end
        end

        def get(uri)
          if data = service.get_role(uri)
            new(data.body)
          end
        rescue Fog::Errors::NotFound
          nil
        end
      end
    end
  end
end
