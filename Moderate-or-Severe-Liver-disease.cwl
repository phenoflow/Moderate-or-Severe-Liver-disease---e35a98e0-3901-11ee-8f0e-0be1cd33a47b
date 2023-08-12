cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  moderate-or-severe-liver-disease-operation---primary:
    run: moderate-or-severe-liver-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  oesophageal-moderate-or-severe-liver-disease---primary:
    run: oesophageal-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-operation---primary/output
  other-moderate-or-severe-liver-disease---primary:
    run: other-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: oesophageal-moderate-or-severe-liver-disease---primary/output
  moderate-or-severe-liver-disease-specified---primary:
    run: moderate-or-severe-liver-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-moderate-or-severe-liver-disease---primary/output
  oesophagoscopic-moderate-or-severe-liver-disease---primary:
    run: oesophagoscopic-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-specified---primary/output
  moderate-or-severe-liver-disease-banding---primary:
    run: moderate-or-severe-liver-disease-banding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: oesophagoscopic-moderate-or-severe-liver-disease---primary/output
  amoebic-moderate-or-severe-liver-disease---primary:
    run: amoebic-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-banding---primary/output
  moderate-or-severe-liver-disease-bleeding---primary:
    run: moderate-or-severe-liver-disease-bleeding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: amoebic-moderate-or-severe-liver-disease---primary/output
  moderate-or-severe-liver-disease-cirrhosis---primary:
    run: moderate-or-severe-liver-disease-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-bleeding---primary/output
  chronic-moderate-or-severe-liver-disease---primary:
    run: chronic-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-cirrhosis---primary/output
  moderate-or-severe-liver-disease-abscess---primary:
    run: moderate-or-severe-liver-disease-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-moderate-or-severe-liver-disease---primary/output
  hepatic-moderate-or-severe-liver-disease---primary:
    run: hepatic-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-abscess---primary/output
  moderate-or-severe-liver-disease---primary:
    run: moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hepatic-moderate-or-severe-liver-disease---primary/output
  hepatorenal-moderate-or-severe-liver-disease---primary:
    run: hepatorenal-moderate-or-severe-liver-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hepatorenal-moderate-or-severe-liver-disease---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
