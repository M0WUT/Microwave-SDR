import git
import logging
from usefulFunctions import get_ip, get_mac, get_link_speed
import socket


class InfoHandler():
    def __init__(self, ui, warnings):
        self.ui = ui
        self.warnings = warnings
        self.update_git()
        self.update_ip()

    def update_git(self):
        repo = git.Repo(search_parent_directories=True)
        sha = repo.head.object.hexsha
        self.ui.label_gitVersion.setText(sha[:5] + "..." + sha[-5:])
        gitStatus = "Modified" if repo.is_dirty() else "Clean"
        self.ui.label_gitStatus.setText(gitStatus)
        logging.info(f"Git Hash: {sha}, Git status: {gitStatus}")

    def update_ip(self):
        x = get_ip()
        if x is None:
            self.warnings.add_error("Network", "Unable to get IP address")
        else:
            logging.info(f"IP Address: {x}")
            self.ui.label_ipAddr.setText(x)

    def update_link_speed(self):
        self.ui.label_linkSpeed.setText(
            get_link_speed()
        )

    def update_mac(self):
        self.ui.label_mac.setText(
            get_mac()
        )

    def update_hostname(self):
        self.ui.label_hostname.setText(
            socket.gethostname()
        )

    def tab_enabled(self):
        self.update_git()
        self.update_ip()
        self.update_mac()
        self.update_link_speed()
        self.update_hostname()
