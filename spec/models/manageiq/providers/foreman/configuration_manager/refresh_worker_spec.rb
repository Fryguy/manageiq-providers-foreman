describe ManageIQ::Providers::Foreman::ConfigurationManager::RefreshWorker do
  describe ".all_ems_in_zone" do
    let(:zone) { EvmSpecHelper.local_guid_miq_server_zone.last }
    let!(:ems) { FactoryBot.create(:configuration_manager_foreman, :zone => zone) }

    it "returns the ems" do
      expect(described_class.all_ems_in_zone).to include(ems)
    end
  end
end
