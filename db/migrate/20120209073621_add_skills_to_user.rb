class AddSkillsToUser < ActiveRecord::Migration
  def change
    add_column :users, :skill_teaching, :boolean
    add_column :users, :skill_taing, :boolean
    add_column :users, :skill_coordinating, :boolean
    add_column :users, :skill_childcaring, :boolean
    add_column :users, :skill_writing, :boolean
    add_column :users, :skill_hacking, :boolean
    add_column :users, :skill_designing, :boolean
    add_column :users, :skill_evangelizing, :boolean
    add_column :users, :skill_mentoring, :boolean
    add_column :users, :skill_mac_os, :boolean
    add_column :users, :skill_windows, :boolean
    add_column :users, :skill_linux, :boolean
    add_column :users, :skill_other, :string
  end
end
