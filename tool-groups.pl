#!/usr/bin/perl
# Lists members of all groups, or optionally just the group
# specified on the command line
#
# Copyright © 2010-2013 by Zed Pobre (zed@debian.org or zed@resonant.org)
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# NOTE: Can also use
#   cat /etc/group | grep [your_group_name]
#
#

use strict; use warnings;

$ENV{"PATH"} = "/usr/bin:/bin";

my $wantedgroup = shift;

my %groupmembers;
my $usertext = `getent passwd`;

my @users = $usertext =~ /^([a-zA-Z0-9_-]+):/gm;

foreach my $userid (@users)
{
    my $usergrouptext = `id -Gn $userid`;
    my @grouplist = split(' ',$usergrouptext);

    foreach my $group (@grouplist)
    {
        $groupmembers{$group}->{$userid} = 1;
    }
}

if($wantedgroup)
{
    print_group_members($wantedgroup);
}
else
{
    foreach my $group (sort keys %groupmembers)
    {
        print "Group ",$group," has the following members:\n";
        print_group_members($group);
        print "\n";
    }
}

sub print_group_members
{
    my ($group) = @_;
    return unless $group;

    foreach my $member (sort keys %{$groupmembers{$group}})
    {
        print $member,"\n";
    }
}

