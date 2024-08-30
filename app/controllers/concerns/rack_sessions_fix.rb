module RackSessionsFix
  extend ActiveSupport::Concern

  class FakeRackSession < Hash
    def enabled?
      false
    end

    def destroy; end
  end

  included do
    before_action :set_fake_sesion

    private

    def set_fake_sesion
      request.env['rack.session'] ||= FakeRackSession.new
    end
  end
end
