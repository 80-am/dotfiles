const command = "bash pecan/scripts/lang";
const refreshFrequency = 1000; // ms

const render = ({ output }) => <div class='screen'><div class='pecanlang'>{`${output}`}</div></div>;

export { command, refreshFrequency, render};
