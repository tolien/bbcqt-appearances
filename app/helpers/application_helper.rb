module ApplicationHelper
  
  def load_appearance(date, people)
    puts date.class
    puts people.class
    
    people = people.split(',')
    
    appearance = Appearance.create(date: date)
    if not appearance.id
      appearance = Appearance.find_by_date(appearance.date)
    end
    
    people.each do |name|
      name = name.strip
      person = Person.find_by_name(name)
      
      if not person
        person = Person.create(name: name)
      end
      
      person.appearances << appearance
    end
  end
end
