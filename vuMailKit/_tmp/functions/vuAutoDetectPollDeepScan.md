
# vuAutoDetectPollDeepScan

Polls an asynchronous deep autodetect job. State values are `0 = running`, `1 = completed`, `2 = canceled`, and `-1 = failed`. Stage values mirror autodetect source values while the job is running.

During long stage-6 probe scans, the returned status text may become stronger after about 90 seconds and 180 seconds to tell the UI that the scan is taking longer than normal. If the job reaches about 300 seconds, polling will transition to the failed state and the status text will indicate that the user should complete the settings manually.