class Pin < ActiveRecord::Base
	
	belongs_to :user
	validates_presence_of :description, :user_id
	
	has_attached_file :image,
					:styles => {
				  	:thumb    => ['100x100#',  :jpg, :quality => 70],
				  	:preview  => ['480x480#',  :jpg, :quality => 70],
				  	:large    => ['600>',      :jpg, :quality => 70],
				  	:retina   => ['1200>',     :jpg, :quality => 30]
				}

                        
											 
 	validates_attachment_content_type :image, :content_type => /\Aimage/

end
