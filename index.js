// const port = process.env.PORT || 3000;
const port = 3000;
const { execSync } = require("child_process");

execSync(`chmod +x ./start.sh && ./start.sh`,{
	cwd: './'
})
