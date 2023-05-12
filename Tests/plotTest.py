from analyse import freqSweepData as fs
import electrools as et
import numpy as np
from matplotlib import pyplot as plt
basepath=r''
filename='FuncTransfert_4.pkl'
figLin, axsLin = plt.subplots(2, 1, sharex='col')
data=fs.fromFile(basepath+filename)
f,amp,phase=data.linResponse()
axsLin[0].plot(f,amp)
axsLin[1].plot(f,phase)
axsLin[0].set_ylabel('R (dBV)')
axsLin[0].set_xscale('log')
axsLin[1].set_ylabel('$\phi$ (deg.)')
axsLin[1].set_xlabel('Frequency (Hz)')
[ax.set_xlim([1,1e5]) for ax in axsLin]
#axsLin[0].set_ylim([-3,0])
[ax.grid(which='Major', linestyle='-') for ax in axsLin]
expDescr='V$_{pp}$=3.472V, R$_L$=100$\Omega$'
axsLin[0].set_yticks(list(axsLin[0].get_yticks())+[6.6])
axsLin[0].set_title(expDescr)
axsLin[0].set_ylim([None,8])
[ax.grid(which='Minor', linestyle=':') for ax in axsLin]

plt.figure()
f,thdIn,thdOut=data.totalHarmonicDistortion()
plt.plot(f,thdIn,label='THD signal ref')
plt.plot(f,thdOut,label='THD sortie')
plt.xlabel('Frequency (Hz)')
plt.title(expDescr)
plt.ylim([None,2.25])
plt.xlim([20,None])
plt.xscale('log')
plt.grid(which='Minor',linestyle=':')
plt.legend()
plt.grid(which='Major',linestyle='-')
plt.ylabel('THD (\%)')
#filenames=['20230308_tonecircuittest3_tone7.pkl','20230308_tonecircuittest3_tone9.pkl','20230308_tonecircuittest3_tone12.pkl','20230308_tonecircuittest3_tone3.pkl','20230308_tonecircuittest3_tone5.pkl']
#amplitudes=[7,9,12,3,5]
#figLin, axsLin = plt.subplots(2, 1, sharex='col')
#axsLin[0].set_title('Transfer function at output stage for different tone knob orientation')
#for filename,amplitude in zip(filenames,amplitudes):
#    data=fs.fromFile(basepath+filename)
#    f,amp,phase=data.linResponse()
#    axsLin[0].plot(f,amp,label='%d o\'clock'%amplitude)
#    axsLin[1].plot(f,phase)
#    #data.harmonicMap(plot=True)
#    #plt.gca().set_title('Dist. Knob at %d o\'clock'%amplitude)
#axsLin[0].set_ylabel('R (dBV)')
#axsLin[0].set_xscale('log')
#axsLin[1].set_ylabel('$\phi$ (deg.)')
#axsLin[1].set_xlabel('Frequency (Hz)')
#[ax.set_xlim([20,20e3]) for ax in axsLin]
#axsLin[0].set_ylim([None,0])
#[ax.grid(which='Major', linestyle='-') for ax in axsLin]
#[ax.grid(which='Minor', linestyle=':') for ax in axsLin]
#axsLin[0].legend()
#index=10
#knobpos=4
#data = fs.fromFile(basepath +  '20230317_tonecircuittestnoise3.pkl')
##print('Knob is at %d'%amplitudes[knobpos])
#print('Freq is at %f'%data.freqs[index])
#data.plotData(index=index)
#data.plotSpectra(index=index)
plt.show()
