package Qudo::Job;
use strict;
use warnings;

sub new {
    my ($class, %args) = @_;
    bless {%args}, $class;
}

sub id       { shift->{job_data}->id      }
sub arg      { shift->{job_data}->arg     }
sub uniqkey  { shift->{job_data}->uniqkey }
sub func_id  { shift->{job_data}->func_id }
sub funcname { shift->{job_data}->name    }

sub completed {
    my $self = shift;
    $self->{_complete} = 1;
}

sub is_completed {
    my $self = shift;
    $self->{_complete};
}

1;
