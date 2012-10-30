class cucumber-puppet::packages {
	Package { ensure => "latest" }

	$gems = [ "rubygem-builder", "rubygem-cucumber", "rubygem-cucumber-puppet", "rubygem-diff-lcs", "rubygem-extlib",
                  "rubygem-gem-man", "rubygem-gherkin", "rubygem-highline", "rubygem-json", "rubygem-templater" ]

	package { $gems: }
}
