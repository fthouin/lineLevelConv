from sigGen import sigGen
from scope import Scope
from measure import *
import time
from matplotlib import pyplot as plt
import numpy as np
from analyse import freqSweepData

scp=Scope()
wvgen=sigGen()
print(scp.getID())
print(wvgen.getID())
#scp.setCoupling(channel=1,mode='DC')
#scp.setTrig(mode='NORM')
#scp.setWaveAcq()
basepath=r'../charac_20230408/'
wvgen.setSync()
freqs=np.logspace(0,5,50)
amp=3.472
waves1,waves2=freqSweep(scp,wvgen,freqs,amp,offset=0,numPeriods=50)
descr='Convertisseur de niveau ligne,100Ohm et 100uF.30V,cap onV+'
fsData=freqSweepData(waves1,waves2,freqs=freqs,amp=amp,description=descr)
fsData.save('FuncTransfert_4.pkl')
#for index in range(len(freqs)):
#    plt.figure()
#    plt.title('%.2e Hz'%freqs[index])
#    plt.plot(fsData.waveIn[index].t,fsData.waveIn[index].data)
#    plt.plot(fsData.waveOut[index].t,fsData.waveOut[index].data)
#plt.figure()
#index=1
#plt.title('%.2e Hz'%freqs[index])
#plt.plot(fsData.waveOut[index].t,fsData.waveOut[index].data)
#plt.plot(fsData.waveOut[index].t,fsData.waveOut[index].data)

#index=1
#plt.title('f=%.2e Hz'%freqs[index])
#plt.plot(wave1[index].t,wave1[index].data)
#plt.xlabel('Time [s]')
#plt.ylabel('V')
#
#amplitude=[np.max(np.abs(wave.data)) for wave in wave2]
#plt.figure()
#plt.plot(freqs,amplitude,'s')
#plt.xscale('log')

#for i,wave in enumerate(wave1):
#   print(i)
#   plt.plot(wave)
wvgen.close()
scp.close()

plt.show()
