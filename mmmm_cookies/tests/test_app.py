"""Test the default python-in-a-box app."""

from io import StringIO
from unittest import TestCase, mock

from ..app import main


class AppTest(TestCase):
    """Test the default python-in-a-box app."""

    def test_app_stdout(self) -> None:
        with mock.patch('sys.stdout', new=StringIO()) as mock_stdout:
            main()
            self.assertEqual(mock_stdout.getvalue(), "Hello World!")
