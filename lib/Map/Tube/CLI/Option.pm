package Map::Tube::CLI::Option;

$Map::Tube::CLI::Option::VERSION   = '0.75';
$Map::Tube::CLI::Option::AUTHORITY = 'cpan:MANWAR';

=head1 NAME

Map::Tube::CLI::Option - Option as Moo Role for Map::Tube::CLI.

=head1 VERSION

Version 0.75

=cut

use 5.006;
use Data::Dumper;

use Moo::Role;
use namespace::autoclean;

use Types::Standard -all;
use MooX::Options;

has maps             => (is => 'rw');
option map           => (is => 'ro', order => 1,  isa => Str, format => 's', required => 1, doc => 'Map name');
option start         => (is => 'ro', order => 2,  isa => Str, format => 's', doc => 'Start station name');
option end           => (is => 'ro', order => 3,  isa => Str, format => 's', doc => 'End station name'  );
option preferred     => (is => 'ro', order => 4,  doc => 'Show preferred route');
option generate_map  => (is => 'ro', order => 5,  doc => 'Generate map as image');
option line          => (is => 'ro', order => 6,  isa => Str, format => 's', doc => 'Line name for map'    );
option bgcolor       => (is => 'ro', order => 7,  isa => Str, format => 's', doc => 'Map background color' );
option line_mappings => (is => 'ro', order => 8,  doc => 'Generate line mappings');
option line_notes    => (is => 'ro', order => 9,  doc => 'Generate line notes');
option list_lines    => (is => 'ro', order => 10, doc => 'List lines');

=head1 DESCRIPTION

B<FOR INTERNAL USE ONLY>

=head1 AUTHOR

Mohammad Sajid Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/manwar/Map-Tube-CLI>

=head1 BUGS

Please report any bugs or feature requests through the web interface at L<https://github.com/manwar/Map-Tube-CLI/issues>.
I will  be notified and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::CLI::Option

You can also look for information at:

=over 4

=item * BUG Report

L<https://github.com/manwar/Map-Tube-CLI/issues>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Map-Tube-CLI>

=item * Search MetaCPAN

L<http://metacpan.org/dist/Map-Tube-CLI/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2015 - 2024 Mohammad Sajid Anwar.

This program  is  free software; you can redistribute it and / or modify it under
the  terms  of the the Artistic License (2.0). You may obtain  a copy of the full
license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any  use,  modification, and distribution of the Standard or Modified Versions is
governed by this Artistic License.By using, modifying or distributing the Package,
you accept this license. Do not use, modify, or distribute the Package, if you do
not accept this license.

If your Modified Version has been derived from a Modified Version made by someone
other than you,you are nevertheless required to ensure that your Modified Version
 complies with the requirements of this license.

This  license  does  not grant you the right to use any trademark,  service mark,
tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge patent license
to make,  have made, use,  offer to sell, sell, import and otherwise transfer the
Package with respect to any patent claims licensable by the Copyright Holder that
are  necessarily  infringed  by  the  Package. If you institute patent litigation
(including  a  cross-claim  or  counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement,then this Artistic
License to you shall terminate on the date that such litigation is filed.

Disclaimer  of  Warranty:  THE  PACKAGE  IS  PROVIDED BY THE COPYRIGHT HOLDER AND
CONTRIBUTORS  "AS IS'  AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED
WARRANTIES    OF   MERCHANTABILITY,   FITNESS   FOR   A   PARTICULAR  PURPOSE, OR
NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS
REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL,  OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Map::Tube::CLI::Option
