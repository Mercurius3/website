# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "activeadmin-sortable"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam McCrea"]
  s.date = "2012-11-09"
  s.description = "Drag and drop sort interface for ActiveAdmin tables"
  s.email = ["adam@adamlogic.com"]
  s.homepage = "https://github.com/newcontext/activeadmin-sortable"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Drag and drop sort interface for ActiveAdmin tables"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeadmin>, ["~> 0.4"])
    else
      s.add_dependency(%q<activeadmin>, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<activeadmin>, ["~> 0.4"])
  end
end
