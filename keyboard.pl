#!c:\Perl64\bin\perl
use 5.10.0;
use strict;
use warnings;

chomp (my @lines = <data>);
my $latest_row = 0;
my $latest_col = 0;

while (1) {
        print "Enter a word or 'q' to quit: ";
        chomp (my $target = <stdin>);
        exit 0 if ($target eq 'q');
        say "Keyboard:";
        say "\t$_" foreach @lines;
        say "\nTo type '$target' on this keyboard, starting from the top left,\n";
        say get_path_to($_) foreach (split '', $target);
        print "\n";
}

sub get_path_to {
        defined (my $char = $_[0]) or die 'get_path_to requires a char as the first parameter';

        my $found_row;
        my $found_col;
        foreach my $index (0..$#lines) {
                if ((my $pos = index ($lines[$index], $char)) != -1) {
                        ($found_row, $found_col) = ($index, $pos);
                }   
        }   
        defined $found_row and defined $found_col or die 'word not fully present in layout';

        my $row_diff = $latest_row-$found_row;
        my $col_diff = $latest_col-$found_col;
        my $result = $row_diff > 0 ? 
                "Move up ".($row_diff) :
                "Move down ".(-$row_diff);
        $result .= $col_diff > 0 ? 
                ", left ".($col_diff).", and press $char" :
                ", right ".(-$col_diff).", and press $char";
            
        ($latest_row, $latest_col) = ($found_row, $found_col);
        return $result;
}