module TimeCardsHelper
  def date_in_japanese(date = Date.today)
    "#{date.year}年#{date.month}月#{date.day}日 #{day_of_the_week_in_japanese(date)}"
  end

  def day_of_the_week_in_japanese(date)
    case date.wday
    when 0
      '日曜日'
    when 1
      '月曜日'
    when 2
      '火曜日'
    when 3
      '水曜日'
    when 4
      '木曜日'
    when 5
      '金曜日'
    when 6
      '土曜日'
    end
  end

  def work_status(time_card)
    if time_card.in_time.nil?
      '未出社'
    elsif !time_card.in_time.nil? && time_card.out_time.nil?
      '勤務中'
    else !time_card.out_time.nil?
      '退社済'
    end
  end
end
