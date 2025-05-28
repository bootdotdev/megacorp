#!/usr/bin/env python3


class NetworkScanner:
    def __init__(self, target_ip=None):
        self.target_ip = target_ip
        self.scan_results = []

    def scan(self, target_ip=None):
        """
        Simulates scanning a network target
        """
        if target_ip:
            self.target_ip = target_ip

        if not self.target_ip:
            raise ValueError("No target IP provided")

        # Simulate a scan result
        self.scan_results = [
            {"port": 22, "service": "SSH", "status": "open"},
            {"port": 80, "service": "HTTP", "status": "open"},
            {"port": 443, "service": "HTTPS", "status": "open"},
        ]
        return self.scan_results

    def get_results(self):
        """
        Returns the latest scan results
        """
        return self.scan_results


if __name__ == "__main__":
    # Example usage
    scanner = NetworkScanner()
    results = scanner.scan("192.168.1.1")
    print(f"Scan results for 192.168.1.1:")
    for item in results:
        print(f"Port {item['port']} ({item['service']}): {item['status']}")
