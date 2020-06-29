const { promisify } = require('util')
const exec = promisify(require('child_process').exec)
const { join } = require('path')
const bluebird = require('bluebird')

const fileiconProg = './node_modules/fileicon/bin/fileicon'
const abs = (path) => join(__dirname.replace(' ', '\\ '), path)

const apps = [
  ['./VS_Code.png', '/Applications/Visual\\ Studio\\ Code.app/'],
  ['./Simulator.png', '/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'],
  ['./Safari.png', '/Applications/Safari.app/']
]

bluebird.map(apps, ([newIcon, target]) => {
  return exec(`${abs(fileiconProg)} set ${target} ${abs(newIcon)}`)
    .then(console.log)
    .catch(console.log)
}, { concurrency: 1 })
