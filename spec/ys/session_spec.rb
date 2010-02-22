require File.join(File.dirname(__FILE__), %w[ .. spec_helper ])

describe Ys::Session, '.start' do
  context 'with some remote host' do
    %w[ example.com ].each do |host| # I forgot the IP of example
      subject { Ys::Session.start(host) }

      it { should be_an_instance_of Ys::RemoteSession }
    end
  end

  context 'with localhost' do
    %w[ localhost 127.0.0.1].each do |host|
      subject { Ys::Session.start(host) }
      
      it { should be_an_instance_of Ys::LocalSession }
    end
  end

  context 'with nil' do
    subject { Ys::Session.start }
    
    it { should be_an_instance_of Ys::LocalSession }
  end
end
