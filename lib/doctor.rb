class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments #drsteve.appointments => [appt1, app2]
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients #drsteve.patients => [pat1, pat2, pat3]
    Patient.all.select {|patient| patient.doctor == self}
  end

end
