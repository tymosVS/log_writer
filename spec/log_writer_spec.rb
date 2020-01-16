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

  it 'does something useful' do
    expect(LogWriter::Writer.new.run).to eq(nil)
  end

  it 'print default message' do
    expect{ LogWriter::Writer.new.run }.to output(str).to_stdout
  end

  it 'Check change printed text' do
    log_writer.default_string = 'Check text'
    expect{ log_writer.run }.to output("Check text\n").to_stdout
  end

  it 'Possible set new default string using inisializer' do
    l_w = LogWriter::Writer.new('Check text')
    expect{ l_w.run }.to output("Check text\n").to_stdout
  end

  it 'Possible set symbolic picture using inisializer' do
    l_w = LogWriter::Writer.new(img)
    expect{ l_w.run }.to output(img + "\n").to_stdout
  end

  it 'possible set symbolic picture using setter' do
    log_writer.default_string = img
    expect{ log_writer.run }.to output(img + "\n").to_stdout
  end
end
