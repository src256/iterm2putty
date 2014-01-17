# Iterm2putty

Iterm2putty is a tool which converts iTerm2 color scheme to a Putty color configuration.

## Installation
Clone from GitHub:

    # git clone https://github.com/src256/iterm2putty.git

And then execute:

    $ bundle install --path .bundle

## Usage

    $ bundle exec ruby bin/iterm2putty sample.itermcolors > sample.reg

Modify section name and double clock iterm2.reg on Windows.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

