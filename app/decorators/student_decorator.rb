class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)

    @suma = 0.00
    @liczba = subject_item_notes.where(subject_item_id: subject_item.id).count
    @liczba == 0 ? @liczba = 1 : @liczba 

    subject_item_notes.where(subject_item_id: subject_item.id).each do |item|
      @suma = @suma + item.value
    end

    @average = @suma / @liczba 

    return "#{'%.2f' % @average}"
  end
end
