import unittest
import identidock

class TestCases(unittest.TestCase):

    def setUp(self):
        identidock.app.config["TESTING"] = True
        self.app = identidock.app.test_client()

    def test_get_mainpage(self):
        url = "http://ec2-34-214-190-217.us-west-2.compute.amazonaws.com:5000"
        print("URL: ",url)
        page = self.app.post(url, data=dict(name="Moby Dock"))
        print("Page Status Code: ", page.status_code)
        assert page.status_code == 200
        assert 'Hello' in str(page.data)
        assert 'Moby Dock' in str(page.data)

    def test_html_escaping(self):
        page = self.app.post("/", data=dict(name='"><b>TEST</b><!--'))
        assert '<b>' not in str(page.data)

if __name__ == '__main__':
    unittest.main()

