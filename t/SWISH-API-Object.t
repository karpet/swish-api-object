use Test::More tests => 1;

SKIP: {

   eval { require SWISH::API  };

   skip "SWISH::API is not installed - can't do More with it...", 1 if $@;

   skip "SWISH::API 0.04 or higher required", 1 unless ($SWISH::API::VERSION && $SWISH::API::VERSION >= 0.04);

   require_ok('SWISH::API::Object');

}

