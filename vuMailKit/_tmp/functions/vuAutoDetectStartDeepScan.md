
# vuAutoDetectStartDeepScan

Starts an asynchronous deep autodetect job and returns a positive scan handle on success. Use this together with `vuAutoDetectPollDeepScan`, `vuAutoDetectGetDeepScanResult`, and `vuAutoDetectReleaseDeepScan`.

Deep scan includes a DLL-side hard timeout of about 300 seconds so obviously bad or non-responsive domains do not leave the wizard probing forever.