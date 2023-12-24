# Kamal.directory

[kamal.directory](https://kamal.directory) is a directory of [kamal](https://kamal-deploy.org/) deploy.yml config files that are used in your Ruby and Rails projects!

Made by [@ashwinm](https://twitter.com/ashwinm).

This project is a fork of [@Shpigford](https://twitter.com/Shpigford)'s [gemfile.directory](https://gemfile.directory)

## Codebase

The codebase is vanilla Rails and Sqlite3. Quite a simple setup. Its running on a $4 digital ocean droplet!.

But, I would like to introduce features using [litestack](https://github.com/oldmoe/litestack)

## Setup

You'll need:

- ruby >3 (specific version is in `Gemfile`)
- GitHub API key (for login)

```shell
cd gemfile.directory
bundle install
rails db:setup
```

You can then run the rails web server:

```shell
bin/dev
```

And visit [http://localhost:3000](http://localhost:3000)

## Contributing

It's still very early days for this so your mileage will vary here and lots of things will break.

But almost any contribution will be beneficial at this point. Check the [current Issues](https://github.com/ashwin47/kamal.directory/issues) to see where you can jump in!

If you've got an improvement, just send in a pull request!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

If you've got feature ideas, simply [open a new issues](https://github.com/ashwin47/kamal.directory/issues/new)!

## License & Copyright

Released under the MIT license, see the [LICENSE](https://github.com/ashwin47/kamal.directory/blob/main/LICENSE) file.
