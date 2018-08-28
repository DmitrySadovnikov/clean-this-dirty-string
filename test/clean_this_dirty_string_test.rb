require_relative 'test_helper'

class CleanThisDirtyStringTest < MiniTest::Test
  def test_clean_when_clear_string
    string = 'Привет, "Махмед"! Как дела?'
    result = CleanThisDirtyString.clean!(string)
    assert result == string
  end

  def test_clean_when_dirty_string
    string = "Привет，\t“Махмед”！\nКак дела?😘"
    result = CleanThisDirtyString.clean!(string)
    assert result == 'Привет, "Махмед"! Как дела?'
  end
end
