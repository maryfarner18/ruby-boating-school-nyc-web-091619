class BoatingTest
    attr_accessor :student, :test_name, :instructor, :test_status

    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @instructor = instructor
        @test_status = test_status
        @@all << self
    end

    def self.all
        @@all
    end

end
