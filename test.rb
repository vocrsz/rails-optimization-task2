#!/usr/bin/env ruby



require_relative 'task-2'
require 'benchmark'

# ======== Benchmark RUN =========
Benchmark.bm do |x|
  x.report { work(File.join(__dir__, ARGV.first)) }
end

# # ======== MEMORY PROFILER =========
# require 'memory_profiler'

# report = MemoryProfiler.report do
#   work(File.join(__dir__, ARGV.first))
# end
# report.pretty_print(scale_bytes: true, to_file: 'memory_profiler_reports/report.txt')
# # ==================

# # ======== STACKPROF =========
# require 'stackprof'

# StackProf.run(mode: :object, out: 'stackprof_reports/stackprof.dump', raw: true) do
#   work(File.join(__dir__, ARGV.first))
# end
# # ==================

# # # ======== RUBY_PROF =========
# require 'ruby-prof'

# profiler = RubyProf::Profile.new(measure_mode: RubyProf::ALLOCATIONS, track_allocations: true)

# result = profiler.profile do
#   work(File.join(__dir__, ARGV.first))
# end

# printer = RubyProf::FlatPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/flat.txt', 'w+'))

# printer = RubyProf::DotPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/graphviz.dot', 'w+'))

# printer = RubyProf::GraphHtmlPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/graph.html', 'w+'))

# printer = RubyProf::CallStackPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/callstack.html', 'w+'))
# # ==================

# # # ======== RubyProf QCacheGrind ==========
# # require 'ruby-prof'
# # profiler = RubyProf::Profile.new(measure_mode: RubyProf::MEMORY)

# # result = profiler.profile do
# #   work(File.join(__dir__, ARGV.first))
# # end
# # printer = RubyProf::CallTreePrinter.new(result)
# # printer.print
# # # ==================
