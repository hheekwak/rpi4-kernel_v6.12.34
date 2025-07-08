echo 0 > /sys/kernel/debug/tracing/tracing_on
sleep 1
echo "tracing_off"

echo 0 > /sys/kernel/debug/tracing/events/enable
sleep 1
echo "events disabled"

echo function > /sys/kernel/debug/tracing/current_tracer
sleep 1
echo "function tracer enabled"

# below function is temp-included function for the safety
echo cpu_startup_entry > /sys/kernel/debug/tracing/set_ftrace_filter
sleep 1
echo "cpu_stratup_entry enabled"

echo rpi_get_interrupt_info > /sys/kernel/debug/tracing/set_ftrace_filter
sleep 1
echo "rpi_get_interrupt_info_enabled"

#echo schedule ttwu_do_activate > /sys/kernel/debug/tracing/set_ftrace_filter
#sleep 1
#echo "rpi_get_interrupt_info enabled"

echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_exit/enable
echo "event enabled"

#echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
#echo "sched_switch event enabled"

echo 1 > /sys/kernel/debug/tracing/options/func_stack_trace
echo "function stack trace enabled"

echo 1 > /sys/kernel/debug/tracing/options/sym-offset
echo "sys-offset trace enabled"

echo 1 > /sys/kernel/debug/tracing/tracing_on
echo "tracing_on"

