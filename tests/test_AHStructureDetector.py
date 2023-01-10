import pytest
import sys
import os
import json
import re
sys.path.append('../')
import AHStructureDetector

# Grab test input / expected result pairs
f = open('tests/AHStructureDetector_tests.json')
test_data = json.load(f)
f.close()
Structures = list(test_data.keys())
test_results = []
for Structure in Structures:
    Salt = test_data[Structure]['Salt']
    NNs = list(test_data[Structure].keys())[2:]
    
    for NN in NNs:
        test_output = test_data[Structure][NN]
        test_results.append([Structure,Salt,NN,test_output])

# Each test tests a combination of NN classifier and Structure/Salt
def Structure_NN_SubTest(Structure,Salt,NN):
    print('Current Test System: ' + Salt + '/' + Structure + ' ' + NN)
    WorkDir = os.path.join('tests',Structure)
    [TL,TS] = [int(x) for x in re.findall(r'\d+',NN)]
    Vor = bool(re.findall(r'v',NN))
    Qlm = bool(re.findall(r'a',NN))
    output = AHStructureDetector.Calculate_Liquid_Fraction(WorkDir=WorkDir, Salt=Salt, 
        SystemName=Structure, RefStructure=Structure, ML_TimeLength=TL, ML_TimeStep=TS,
        Voronoi = Vor, Qlm_Average = Qlm)
    return output[3]

# Run the tests (total 189)
@pytest.mark.parametrize("Structure, Salt, NN, expected", test_results)
def test_AHStructureDetector(Structure, Salt, NN, expected):
    assert Structure_NN_SubTest(Structure, Salt, NN) == expected
