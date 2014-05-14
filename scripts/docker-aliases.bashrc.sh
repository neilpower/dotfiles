alias dock='sudo docker.io'
alias dock-clean-containers='sudo docker.io ps -a -q --no-trunc | sudo xargs -r docker.io rm'
# alias dock-clean-containers='sudo docker.io rm $(sudo docker.io ps -a -q)'
alias dock-clean-images="sudo docker.io images -a --no-trunc | grep '^<none>' | awk '{print \$3}' | sudo xargs -r docker.io rmi"
# alias dock-clean-images="sudo docker.io rmi \$(sudo docker.io images | grep '^<none>' | awk '{print \$3}')"
