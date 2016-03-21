module UrlTokenHelper

  def token(length)
    chars = [*('A'..'Z'), *('a'..'z'), *(0..9)]
    (0...length).map {chars.sample}.join.downcase
  end
end
