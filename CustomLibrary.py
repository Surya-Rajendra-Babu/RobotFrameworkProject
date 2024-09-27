# CustomLibrary.py
import os
from robot.api.deco import keyword
from SeleniumLibrary import SeleniumLibrary

class CustomLibrary:
    def __init__(self):
        self.selenium_lib = SeleniumLibrary()

    @keyword
    def open_browser_and_log_in(self, login_url, browser, username, password):
        """Open a browser and log into the application."""
        self.selenium_lib.open_browser(login_url, browser)
        self.selenium_lib.input_text("id=user-name", username)
        self.selenium_lib.input_text("id=password", password)
        self.selenium_lib.click_button("id=login-button")
        self.selenium_lib.wait_until_page_contains("Products")

    @keyword
    def close_browser_and_log_out(self):
        """Close the browser and log out."""
        # Add logout steps here if needed
        self.selenium_lib.close_browser()

    @keyword
    def start_browser_session(self, login_url, browser):
        """Start a browser session."""
        self.selenium_lib.open_browser(login_url, browser)

    @keyword
    def end_browser_session(self):
        """End the browser session."""
        self.selenium_lib.close_browser()

    def include_test_suite(self, suite_file):
        """
        Run a Robot Framework test suite programmatically.
        :param suite_file: Path to the test suite .robot file
        """
        if os.path.isfile(suite_file):
            print(f"Running test suite: {suite_file}")
            from robot import run  # Import here to avoid circular import issues
            run(suite_file)
        else:
            raise FileNotFoundError(f"Test suite {suite_file} not found.")