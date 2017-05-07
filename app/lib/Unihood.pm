package Unihood;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  $self->plugin( 'StaticLog' );
  $self->plugin( Tables => {model_class => 'UnihoodDB'} );

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');
}

1;
