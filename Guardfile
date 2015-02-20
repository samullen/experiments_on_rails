# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest, :all_on_start => false, :spring => true do
  # with Minitest::Unit
  # watch(%r{^test/(.*)_test\.rb})
  # watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  # watch(%r{^test/test_helper\.rb})      { 'test' }

  # with Minitest::Spec
  watch(%r{^test/(.*)_test\.rb$})
  watch(%r{^lib/(.+)\.rb$})         { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/test_helper\.rb$}) { 'test' }

  # Rails 4
  watch(%r{^app/(models|mailers|helpers)/(.+)\.rb$}) { |m| 
    "test/#{m[1]}/#{m[2]}_test.rb" 
  }
  watch(%r{^app/controllers/api/(.+)_controller\.rb$}) { |m| "test/requests/#{m[1]}_test.rb" }
  # watch(%r{^app/views/(.+)_mailer/.+}) { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
end
