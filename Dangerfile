# Warn when there is a big PR
warn('a large PR') if git.lines_of_code > 300

swiftlint.config_file = '.swiftlint.yml'
swiftlint.binary_path = './Pods/SwiftLint/swiftlint'
swiftlint.lint_files additional_swiftlint_args: '--lenient'
swiftlint.lint_all_files = true
