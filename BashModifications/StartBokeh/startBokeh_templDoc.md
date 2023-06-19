Original Lines 21-26:
```
if [[ ${PYTHON_MAIN_VERSION} -eq 3 ]]
then
    PYTHON_APPS="listTests3.py showStatus.py"
else
    PYTHON_APPS="showStatus.py showSchedulerStatus.py listTests.py"
fi
```
Updated:
```
PYTHON_APPS="listTests3.py showStatus.py showSchedulerStatus.py"
```
This is because all Smoketest Python files will be ran in Python 3.
