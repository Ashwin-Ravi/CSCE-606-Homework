Given(/^the following movies exist:$/) do |table|
    table.hashes.each do |movie|
        Movie.create movie
    end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movie_title, director|
    movie = Movie.find_by_title(movie_title)
    expect(movie.director).to eql(director)
end