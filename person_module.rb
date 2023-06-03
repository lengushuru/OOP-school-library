module PersonModule
  def list_all_people
    if @people.empty?
      puts 'Oops! no people registered, please add people'
    else
      @people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher(2)?....'
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid input! Please type 1 or 2'
    end
  end

  def create_student
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Has Parent permission? [Y/N]:'
    parent_permission = gets.chomp.downcase

    student = Student.new(name, @classroom, age, parent_permission: parent_permission == 'y')
    @people << student
    puts 'Student created successfully'
  end

  def create_teacher
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Specialization:'
    specialization = gets.chomp

    @people << Teacher.new(name, specialization, age)
    puts 'Teacher created successfully'
  end
end
