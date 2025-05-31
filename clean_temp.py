import os
import shutil
import getpass
# from win10toast import ToastNotifier
# import time

def clean_directory(path):
    if not os.path.exists(path):
        return
    for item in os.listdir(path):
        item_path = os.path.join(path, item)
        try:
            if os.path.isfile(item_path) or os.path.islink(item_path):
                os.unlink(item_path)
            elif os.path.isdir(item_path):
                shutil.rmtree(item_path, ignore_errors=True)
        except:
            pass  # Suppress all errors silently

def main():
    username = getpass.getuser()
    paths = [
        r"C:\Windows\Prefetch",
        fr"C:\Users\{username}\AppData\Local\Temp",
        r"C:\Windows\Temp"
    ]

    for path in paths:
        clean_directory(path)

    # Show Windows notification
    # toaster = ToastNotifier()
    # toaster.show_toast("Cleaner", "System cleanup complete.", duration=5, threaded=True)
    # time.sleep(6)   # Ensure the script stays alive for the toast to show


if __name__ == "__main__":
    main()
