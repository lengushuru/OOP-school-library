module RentalModule
    def create_rental
        puts 'Select a book from the following list by number'
        @books.each_with_index do |book, index|
          puts "#{index}) Title: #{book.title}, Author: #{book.author}"
        end
    
        book_id = gets.chomp.to_i
    
        puts 'Select a person from the following list by number (not ID)'
        @people.each_with_index do |person, index|
          puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
    
        person_id = gets.chomp.to_i
    
        print 'Date: '
        date = gets.chomp
    
        @rentals << Rental.new(date, @people[person_id], @books[book_id])
        puts 'Rental created successfully'
      end
    
      def list_rentals
        print 'ID of person: '
        id = gets.chomp.to_i
    
        rentals = @rentals.filter { |rental| rental.person.id == id }
    
        puts 'Rentals:'
        rentals.each do |rental|
          puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
        end
      end
end