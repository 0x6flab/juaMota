# Anomaly Classification Using EdgeImpluse

Project Details are [here](https://studio.edgeimpulse.com/public/156133/latest)

## Steps

1. [Data acquisition](https://studio.edgeimpulse.com/public/156133/latest/acquisition/training) - Add the good motor data collected on Friday.

2. [Impluse Design](https://studio.edgeimpulse.com/public/156133/latest/create-impulse)

   - Time series data with a window size of 50ms
   - Frequency of 1000Hz
   - Spectral analysis to be able to analyse data in fourier domain
   - Anomaly detection using K-Means Clustering

3. [Spectral Feature](https://studio.edgeimpulse.com/public/156133/latest/dsp/spectral-analysis/3)

4. Anomaly Detection - used a cluster count of 2 since we have a good motor or a bad motor.

5. [Try live classification](https://studio.edgeimpulse.com/studio/156133/classification)

6. [Try it live using arduino Lib](Deployment/ei-juamota-arduino-1.0.8/juamota_inferencing/examples/static_buffer)
