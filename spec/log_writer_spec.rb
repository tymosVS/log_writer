RSpec.describe LogWriter do
  let(:img) {
    '
      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
      ░░░░░░░░░░░░░▄▄▄▄▄▄▄░░░░░░░░░
      ░░░░░░░░░▄▀▀▀░░░░░░░▀▄░░░░░░░
      ░░░░░░░▄▀░░░░░░░░░░░░▀▄░░░░░░
      ░░░░░░▄▀░░░░░░░░░░▄▀▀▄▀▄░░░░░
      ░░░░▄▀░░░░░░░░░░▄▀░░██▄▀▄░░░░
      ░░░▄▀░░▄▀▀▀▄░░░░█░░░▀▀░█▀▄░░░
      ░░░█░░█▄▄░░░█░░░▀▄░░░░░▐░█░░░
      ░░▐▌░░█▀▀░░▄▀░░░░░▀▄▄▄▄▀░░█░░
      ░░▐▌░░█░░░▄▀░░░░░░░░░░░░░░█░░
      ░░▐▌░░░▀▀▀░░░░░░░░░░░░░░░░▐▌░
      ░░▐▌░░░░░░░░░░░░░░░▄░░░░░░▐▌░
      ░░▐▌░░░░░░░░░▄░░░░░█░░░░░░▐▌░
      ░░░█░░░░░░░░░▀█▄░░▄█░░░░░░▐▌░
      ░░░▐▌░░░░░░░░░░▀▀▀▀░░░░░░░▐▌░
      ░░░░█░░░░░░░░░░░░░░░░░░░░░█░░
      ░░░░▐▌▀▄░░░░░░░░░░░░░░░░░▐▌░░
      ░░░░░█░░▀░░░░░░░░░░░░░░░░▀░░░
      ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    '
  }
  let(:log_writer) { LogWriter::Writer.new }

  it 'has a version number' do
    expect(LogWriter::VERSION).not_to be nil
  end

  it 'do not return someting' do
    expect(LogWriter::Writer.new.run).to eq(nil)
  end

  it 'print default message' do
    str = 'Some text'
    expect { LogWriter::Writer.new.run }.to output(str + "\n").to_stdout
  end

  it 'Check change printed text' do
    str = 'Check text'
    LogWriter.configure do |config|
      config.default_text = str
    end
    expect { log_writer.run }.to output("Check text\n").to_stdout
  end

  it 'possible set symbolic picture using setter' do
    LogWriter.configure do |config|
      config.default_text = img
    end
    expect{ log_writer.run }.to output(img + "\n").to_stdout
  end
end
