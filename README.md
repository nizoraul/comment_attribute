comment_attribute
====

This plug in can access attribute by the comment of the database

## Description

It becomes available, and access is enabled to the column of the database using comment setting after Rails5.
Access to attribute using a multi-byte language is in this way enabled.

## Example

migration
```ruby
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, comment: "ユーザ" do |t|
      t.string :last_name, comment: '姓'
      t.string :first_name, comment: '名'
    end
  end
end
```
example
```ruby
user = User.new(last_name: "野比", first_name: "のび太")

#read
user["姓"] #=> 野比
user.comments #=> {"id" => nil, "姓" => "野比", "名" => "のび太"}

#write
user['名'] = "しずか"

#other
user.comment_to_attr_name("姓") #=> "last_name"
user.attr_name_to_comment("last_name") #=> "姓"
```

## Requirement

Rails > 5.0 and MySQL or PosgreSQL

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'comment_attribute'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install comment_attribute
```
When it is applied to all models

app/models/application_record.rb
```ruby
include CommentAttribute
```
## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)
