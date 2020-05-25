class Course < ApplicationRecord
	belongs_to :shop

	attachment :course_image

end
