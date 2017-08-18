FROM partlab/ubuntu-ruby

RUN mkdir /src/

ADD . /src
WORKDIR /src

RUN gem install bundler
RUN bundle install
RUN rails db:migrate
EXPOSE 3000 

CMD ["bundle", "exec", "rails", "s"]