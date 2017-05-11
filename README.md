# activeresource-chatwork
[![CircleCI](https://circleci.com/gh/Leko/activeresource-chatwork/tree/master.svg?style=svg)](https://circleci.com/gh/Leko/activeresource-chatwork/tree/master)
[![codecov](https://codecov.io/gh/Leko/activeresource-chatwork/branch/master/graph/badge.svg)](https://codecov.io/gh/Leko/activeresource-chatwork)
[![Gem Version](https://badge.fury.io/rb/activeresource-chatwork.svg)](https://badge.fury.io/rb/activeresource-chatwork)

ActiveResource classes for Chatwork API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activeresource-chatwork'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activeresource-chatwork

## Usage

### Setup
```ruby
ENV['CHATWORK_TOKEN'] = 'YOUR_CHATWORK_API_TOKEN'
```

### Contacts
```ruby
# GET /v2/contacts
contacts = Chatwork::Contact.all
```

### My
```ruby
# GET /v2/my/status
status = Chatwork::My.status

# GET /v2/my/tasks?status=open
tasks = Chatwork::My.tasks status: Chatwork::Task::STATUS_OPEN
```

### Rooms
```ruby
# GET /v2/rooms
rooms = Chatwork::Room.all

# GET /v2/rooms/xxx
room = Chatwork::Room.find xxx

# POST /v2/rooms
params = {
  name: 'xxx',
  members_admin_ids: [yyy],
  icon_preset: Chatwork::Room::ICON_GROUP
  # show all icon constants -> Chatwork::Room.constants.grep(/ICON_/)
}
room = Chatwork::Room.create params

# PUT /v2/rooms/xxx
room.name = 'xxx'
room.save

# DELETE /v2/rooms/xxx
# show all action constants -> Chatwork::Room.constants.grep(/ACTION_/)
Chatwork::Room.delete(room.id, action_type: Chatwork::Room::ACTION_DELETE)
```

### Messages
```ruby
# GET /v2/rooms/xxx/messages
params = {params: {force: 1, room_id: xxx}}
messages = Chatwork::Message.all params
# or
room = Chatwork::Room.find xxx
messages = room.messages

# GET /v2/rooms/xxx/messages/yyy
params = {params: {room_id: xxx}}
message = Chatwork::Message.find yyy, params
# or
room = Chatwork::Room.find xxx
message = room.message yyy

# POST /v2/rooms/xxx/messages
message = Chatwork::Message.new body: 'yyy'
message.prefix_options[:room_id] = xxx
message.save
```

### Members
```ruby
# GET /v2/rooms/xxx/members
params = {params: {room_id: xxx}}
members = Chatwork::Member.all params
# or
room = Chatwork::Room.find xxx
members = room.members

# PUT /v2/rooms/xxx/members
room = Chatwork::Room.find xxx
room.update_members members_admin_ids: [yyy, zzz].join(',')
```

### Tasks
```ruby
# GET /v2/rooms/xxx/tasks
tasks = Chatwork::Contact.all
# or
room = Chatwork::Room.find xxx
tasks = room.tasks

# GET /v2/rooms/xxx/tasks/yyy
params = { params: { room_id: xxx } }
tasks = Chatwork::Task.all params
# or
room = Chatwork::Room.find xxx
task = room.task(yyy)

# POST /v2/rooms/xxx/tasks
task = Chatwork::Task.new(body: 'some task', to_ids: [yyy, zzz])
task.prefix_options[:room_id] = xxx
task.save
```

### Files
```ruby
# GET /v2/rooms/xxx/files
params = { params: { room_id: xxx } }
files = Chatwork::File.all params
# or
room = Chatwork::Room.find xxx
files = room.files

# GET /v2/rooms/xxx/files/yyy
file = Chatwork::Contact.all
# or
room = Chatwork::Room.find xxx
file = room.file(yyy)
```

### Incoming requests
```ruby
# GET /v2/incoming_requests
requests = Chatwork::IncomingRequest.all

# PUT /v2/incoming_requests/xxx
requests = Chatwork::IncomingRequest.first
requests.save

# PUT /v2/incoming_requests/xxx
Chatwork::IncomingRequest.delete(request.id)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Leko/activeresource-chatwork.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
