DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ruby "$DIR/json.rb" | ruby "$DIR/parses.rb" "$@"
