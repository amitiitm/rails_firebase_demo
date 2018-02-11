class UsersController < ApplicationController

  def create
    response = FIREBASE.push("mayank", { :name => 'Jai Hind', :'.priority' => 1 })
    response.success? # => true
    status_code = response.code # => 200
    response.body # => { 'name' => "-INOQPH-aV_psbk3ZXEX" }
    response.raw_body # => '{"name":"-INOQPH-aV_psbk3ZXEX"}'
    render :json => {status: response.body}
  end

  def index
    response = FIREBASE.get("mayank")
    response.success? # => true
    status_code = response.code # => 200
    puts response.body # => { 'name' => "-L52krn_ya5Tp2qh7KS-" }
    puts response.raw_body # => '{"name":"-L52krn_ya5Tp2qh7KS-"}'
    render :json => {status: response.body}
  end

  def update
    response = FIREBASE.update("mayank", {"-L52krn_ya5Tp2qh7KS-" => {:name => 'Itech Again Updated'}})
    response.success? # => true
    status_code = response.code # => 200
    puts response.body # => { 'name' => "-L52krn_ya5Tp2qh7KS-" }
    puts response.raw_body # => '{"name":"-L52krn_ya5Tp2qh7KS-"}'
    render :json => {status: response.body}
  end

  def destroy
    response = FIREBASE.delete("mayank")
    response.success? # => true
    status_code = response.code # => 200
    puts response.body # => { 'name' => "-L52krn_ya5Tp2qh7KS-" }
    puts response.raw_body # => '{"name":"-L52krn_ya5Tp2qh7KS-"}'
    render :json => {status: response.body}
  end
end