class Experience < ApplicationRecord

  belongs_to :cvm

  validates :company, :position, :jobdetail, :startdate, presence: true

  has_many  :projects, dependent: :destroy

  accepts_nested_attributes_for :projects


end
