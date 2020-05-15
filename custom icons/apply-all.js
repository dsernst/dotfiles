const { promisify } = require('util')
const exec = promisify(require('child_process').exec)
const { join } = require('path')

const fileiconProg = './node_modules/fileicon/bin/fileicon'
const newIcon = './VS_Code.png'
const target = '/Applications/Visual\\ Studio\\ Code.app/'

const abs = (path) => join(__dirname.replace(' ', '\\ '), path)

exec(`${abs(fileiconProg)} set ${target} ${abs(newIcon)}`)
  .then(console.log)
  .catch(console.log)
