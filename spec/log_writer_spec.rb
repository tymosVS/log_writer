RSpec.describe LogWriter do
  it 'has a version number' do
    expect(LogWriter::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(LogWriter::Writer.new.run).to eq(nil)
  end

  it 'print default message' do
    str = "Some text\n"
    expect{ LogWriter::Writer.new.run }.to output(str).to_stdout
  end

  it 'Check change printed text' do
    l_w = LogWriter::Writer.new
    l_w.default_string = 'Check text'
    expect{ l_w.run }.to output("Check text\n").to_stdout
  end
end
