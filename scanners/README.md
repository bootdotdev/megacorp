# Network Scanners

This directory contains various network scanning tools used by Megacorp for security auditing and network management.

## Available Scanners

- `network_scanner.py`: A basic network scanner that detects open ports and services

## Usage

Import the scanner classes into your Python scripts:

```python
from scanners.network_scanner import NetworkScanner

scanner = NetworkScanner()
results = scanner.scan("192.168.1.1")
print(results)
```
