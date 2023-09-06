

  class Engine < ApplicationRecord
    enum engine_type: { 'Motor a reacción' => 'motor_a_reaccion', 'Motor turbohélice' => 'motor_turbohelice' }
    has_many :maintenances
    has_one_attached :photo
    validates :engine_type, presence: true
    validates :description, presence: true
    validates :name, presence: true, uniqueness: true, format: { with: /\A(REAC|TURBO)-\d+\z/ }
  
    before_create :set_default_photo
  
    private
  
    def set_default_photo
      unless self.photo.attached?
        default_photo_path = Rails.root.join('app', 'assets', 'images', 'default_engine.jpg')
        self.photo.attach(io: File.open(default_photo_path), filename: 'default_engine.jpg', content_type: 'image/jpeg')
      end
    end
  end
  