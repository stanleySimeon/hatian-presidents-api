require 'swagger_helper'

RSpec.describe 'api/grettings', type: :request do
  path '/api/v1/presidents' do
    get 'Retrieves presidents' do
      tags 'Presidents'
      produces 'application/json'
      response '200', 'presidents found' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              created_at: { type: :string, format: :date_time },
              updated_at: { type: :string, format: :date_time }
            }
          }
        run_test!
      end
      response '404', 'presidents not found' do
        run_test!
      end
    end
  end

  path '/api/v1/presidents/{id}' do
    get 'Retrieves a president' do
      tags 'Presidents'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      response '200', 'president found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            created_at: { type: :string, format: :date_time },
            updated_at: { type: :string, format: :date_time }
          },
          required: [ 'id', 'name', 'created_at', 'updated_at' ]
        run_test!
      end
      response '404', 'president not found' do
        run_test!
      end
    end
  end
end
