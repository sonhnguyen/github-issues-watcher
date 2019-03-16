# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Issue.create(title: 'Refactor codes', description: 'The codes now is not clean and not well designed. Please consider refactoring 🙇', opened_at: '26/01/2019 18:38:00', status: 0, author: 'nnluukhtn', issue_id: 3)
Issue.create(title: 'Add more tests', description: 'There is no test as of now. We might want to update our tests to improve coverage 🌕', opened_at: '26/01/2019 18:37:00', status: 0, author: 'nnluukhtn', issue_id: 2)
Issue.create(title: 'Update README', description: 'We need a better README instead of current dummy version 🤔', opened_at: '26/01/2019 18:36:00', status: 0, author: 'nnluukhtn', issue_id: 1)
Issue.create(title: 'Setup demo project', description: 'Init repo', opened_at: '26/01/2019 18:36:00', status: 1, author: 'nnluukhtn', issue_id: 4)
