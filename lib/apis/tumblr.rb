
class APIS::Tumblr

  @@accounts = %W{mathematica npr theverge amnhnyc thingsorganizedneatly photosarsenal floorcharts mixologycocktails justmakemesomething}

  # @a = %W{a b c}
  # @b = ["a", "b", "c"]

  def accounts
    return @@accounts
  end

  def initialize
    @client = Tumblr::Client.new
  end

  def posts poster
    if @@accounts.include? poster
      @client.posts("#{poster}.tumblr.com")["posts"]
    else
      nil
    end
  end


end