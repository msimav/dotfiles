function __expose_dotenv --on-variable PWD --description 'expose .env'
  status --is-command-substitution; and return
  test -e .env; or return

  for line in (cat .env)
    set -xg (echo $line | cut -d = -f 1) (echo $line | cut -d = -f 2-)
  end
end
