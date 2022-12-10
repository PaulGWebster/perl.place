# Always bundle carton its self and cpanm
requires 'Carton',                        'v1.0.34';
requires 'App::cpanminus',                '1.7045';
requires 'local::lib',                    '2.000029';

# Our core web framework
requires 'Mojolicious',                   '9.30';
requires 'Mojolicious::Plugin::OpenAPI',  '5.08';

# Base and support modules
requires 'CPAN::Common::Index',           '0.010';
requires 'CPAN::DistnameInfo',            '0.12';
requires 'CPAN::Meta::Check',             '0.014';
requires 'Capture::Tiny',                 '0.48';
requires 'Class::Tiny',                   '1.008';
requires 'ExtUtils::Config',              '0.008';
requires 'ExtUtils::Helpers',             '0.026';
requires 'ExtUtils::InstallPaths',        '0.012';
requires 'ExtUtils::MakeMaker::CPANfile', '0.09';
requires 'File::Which',                   '1.27';
requires 'File::pushd',                   '1.016';
requires 'HTTP::Tinyish',                 '0.18';
requires 'IPC::Run3',                     '0.048';
requires 'JSON::Validator',               '5.13';
requires 'Menlo',                         '1.9019';
requires 'Menlo::Legacy',                 '1.9022';
requires 'Module::CPANfile',              '1.1004';
requires 'Parse::PMFile',                 '0.43';
requires 'Path::Tiny',                    '0.144';
requires 'String::ShellQuote',            '1.04';
requires 'Tie::Handle::Offset',           '0.004';
requires 'Try::Tiny',                     '0.31';
requires 'URI',                           '5.17';
requires 'Win32::ShellQuote',             '0.003001';
requires 'YAML::LibYAML',                 '0.85';

