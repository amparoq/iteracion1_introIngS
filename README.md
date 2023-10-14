bundle install

bundle add cssbundling-rails &&
bin/rails css:install:bootstrap &&
yarn build:css &&
yarn add @hotwired/turbo-rails &&
yarn add @hotwired/stimulus &&
yarn build