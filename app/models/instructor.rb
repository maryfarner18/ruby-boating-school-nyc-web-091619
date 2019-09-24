class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def update_test(student, test_name, status)
        check = BoatingTest.all.find {|boating_test| boating_test.student == student && 
                                        boating_test.test_name == test_name}
        if check
            check.test_status = status
            check
        else
            BoatingTest.new(student, test_name, status, self)
        end

    end

    def pass_student(student, test_name)
        update_test(student, test_name, "passed")
    end
    
    def fail_student(student, test_name)
        update_test(student, test_name, "failed")
    end

    def self.all
        @@all
    end

end
