# CSP451 – Week 9 Azure Demo
## IoT Temperature Monitoring & Alerting System

### Project Overview

This project demonstrates a real-time IoT temperature monitoring system built using Microsoft Azure services.

The system simulates an IoT device that sends temperature and humidity telemetry data to Azure IoT Hub. The data is processed in real time using Azure Stream Analytics. If the temperature exceeds 40°C, the system automatically generates an alert and stores it separately in Azure Blob Storage.

---

### Business Problem

Industries such as data centers, warehouses, and healthcare facilities require continuous environmental monitoring. High temperatures can cause equipment damage and operational failure.

This solution provides:
- Real-time telemetry ingestion
- Automated threshold detection
- Cloud-based storage
- Scalable architecture

---

### Azure Services Used

- Azure IoT Hub
- Azure Stream Analytics
- Azure Blob Storage
- Azure Cloud Shell (CLI device simulation)

---

### Architecture Flow

IoT Device (Simulated)
→ Azure IoT Hub
→ Azure Stream Analytics
→ Blob Storage (telemetry folder)
→ Blob Storage (alerts folder if temperature > 40°C)

---

### Alert Logic

If temperature > 40°C:
- Generate alert message
- Store alert record in "alerts" container path

---

### Estimated Monthly Cost

| Service | Tier | Estimated Monthly Cost |
|----------|-------|-----------------------|
| IoT Hub | Basic | ~$10 |
| Stream Analytics | 1 SU | ~$15 |
| Storage Account | LRS | ~$2 |
| Total |  | ~$27 |

---

### Demo Command Used

Example command used to simulate high temperature:

az iot device send-d2c-message --hub-name kadesai3-iothub-2046979 --device-id kadesai3-temp-sensor-01 --data '{"temperature":45,"humidity":60}'

---

### Author

CSP451 – Cloud Solution Platforms
Week 9 Azure Demo
