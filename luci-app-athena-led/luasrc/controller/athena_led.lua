module("luci.controller.athena_led", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/athena_led") then
		return
	end

	entry({"admin", "services", "athena_led"}, cbi("athena_led"), _("Athena LED Controller"), 60).dependent = true
end
