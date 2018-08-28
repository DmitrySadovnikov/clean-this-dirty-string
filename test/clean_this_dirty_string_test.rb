require_relative 'test_helper'

class CleanThisDirtyStringTest < MiniTest::Test
  def test_clean_when_clear_string
    bad_string = 'Привет, "Махмед"! Как дела?'
    result     = CleanThisDirtyString.clean!(bad_string)
    assert result == bad_string
  end

  def test_clean_when_dirty_string
    bad_string = "Привет，\t“Махмед»！\nКак дела?😘"
    result     = CleanThisDirtyString.clean!(bad_string)
    assert result == 'Привет, "Махмед"! Как дела?'
  end

  def test_clean_when_dirty_string_2
    bad_string = "Оплата счета № 1"
    result     = CleanThisDirtyString.clean!(bad_string)

    good_string = 'Оплата счета № 1'

    assert bad_string != good_string
    assert result == good_string
  end

  def test_diff
    bad_string = '“Махмед»'
    result     = CleanThisDirtyString.diff(bad_string)
    assert result == %w[“ »]
  end
end
