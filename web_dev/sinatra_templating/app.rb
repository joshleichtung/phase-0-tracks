# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# create HTTP route

get '/songster' do
  @student = db.execute("SELECT name FROM students").sample[0]
  erb :songster
end

get '/songster/:name' do
  @student = params[:name]
  erb :songster
end

get '/ratpack/new' do
  erb :ratpack_form
end

post '/ratpack' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect "/songster/#{params[:name]}"
end
