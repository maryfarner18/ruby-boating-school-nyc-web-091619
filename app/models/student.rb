class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def my_tests
        BoatingTest.all.select {|boating_test| boating_test.student == self}
    end

    def grade_percentage
        passed = 0.0
        my_tests.each do |b_test|
            if b_test.test_status == "passed" 
                passed += 1.0
            end
        end
        (passed / my_tests.count * 100.00).round(2)

    end

    def self.find_student(name)
        all.find {|student| student.first_name == name}
    end

    def self.all
        @@all
    end
end
