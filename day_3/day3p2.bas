10 REM *** AOC 2022 DAY3P2 ***�15 REM *********************�20 REM * (C) BINARY42, 2022�25 REM *********************�30 DIM AR$(300):DIM L$(1):DIM R$(1)�40 DIM A$(100):DIM B$(100):DIM C$(100)�42 DIM S$(1):DIM L2$(50)�43 DIM L3$(50)�50 DIM IT$(1):TOTAL=0�55 DIM ITEMS$(52)�56 DIM LHS$(100):DIM RHS$(100)�57 DIM M$(1)�58 COUNT=0�60 ITEMS$="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"�90 PRINT "READING DATA..."�100 REM FOR X=1 T O5�110 READ A$:READ B$:READ C$�115 GOSUB 200�117 GOSUB 300�118 A$="":B$="":C$=""�119 COUNT=0�120 NEXT X�150 PRINT "TOTAL OF PRIORITIES: ";TOTAL�160 END �200 REM *** FIND BADGE SUB ***�205 IDX=1�218 FOR J=1 TO LEN(A$)�220 L$=A$(J)�222 FOR K=1 TO LEN(B$)�225 R$=B$(K)�230 IF L$=R$ THEN L2$(IDX)=L$:IDX=IDX+1�235 NEXT K:NEXT J�236 IDX=1:L$="":R$=""�240 FOR J=1 TO LEN(L2$)�245 L$=L2$(J)�248 FOR K=1 TO LEN(C$)�250 R$=C$(K)�255 IF L$=R$ THEN L3$(IDX)=L$:IDX=IDX+1�256 NEXT K:NEXT J�300 REM *** CALC PRIORITY SUB ***�301 L$="":R$="":S$=""�302 FOR K=1 TO LEN(A$)�304 L$=A$(K)�305 IF L3$(1,1)=L$ THEN COUNT=COUNT+1�310 NEXT K�315 FOR K=1 TO LEN(B$)�316 R$=B$(K)�320 IF L3$(1,1)=R$ THEN COUNT=COUNT+1�325 NEXT K�330 FOR K=1 TO LEN(C$)�332 S$=C$(K)�335 IF L3$(1,1)=S$ THEN COUNT=COUNT+1�340 NEXT K�343 PRINT COUNT�345 RETURN �1000 REM *** DATA ***�1001 DATA rNZNWvMZZmDDmwqNdZrWTqhJMhhgzggBhzBJBchQzzJJ�1002 DATA pHlSVbVbFHgHBzzhQHqg�1003 DATA nVsqGpbbtDtTNmrmfZ�1004 DATA zrBMnbzBchshsttfbMRBgmJggmmCHGgDhDgNDGHL�1005 DATA VddZqQqdvSQMJHJGdCDCDDmH�1006 DATA pZWWllPQlPZQvZvwpSVlqlvtfswMRzBbntzRbzbfstsRzF�1007 DATA NnjjRlnWNSWWbGwccbcchfPfTvfjfTBBpvmdMjTfvB�1008 DATA FVzJtDDJDqTMlmlM�1009 DATA gVQZlFLlzHhLGShGww�1010 DATA rPZtvtFrFPgWjQvCBlcqMzlqQC�1011 DATA QGVDJJnLnVTCJBczqqTM�1012 DATA fNSSnmLDSVLhhhSNSLhGSGfVPjrFHwmQwtwWFRWRjWPHrwgt�1013 DATA SvmlrVrCvmNhSSVZVCrsgqPfbwGFwwwsflbbGb�1014 DATA QHffdnHDDQdMGbgqPwztdPds�1015 DATA DjBjWHfQDfTQWTBfpMBQLVmmmcCCcVhCBBBhhCmC�1016 DATA trLHFFQHTLHJQrflfCnLLHrRfRRPqSRPbPbbsRGqqGqhjj�1017 DATA mcMpNWVVNmNVsSbSJPcGhPRR�1018 DATA NpzNgwzZDVNZVWNpHJQLQHtQrZQHrBCl�1019 DATA JVCMfgJVrJtMBhhrfVVfhVsjvpFGFgjSSgFdSGGqjvjvqF�1020 DATA mHllHlHpmWlDSFqbdSTS�1021 DATA nmZRLzQnWVpctMVpQs�1022 DATA BrvRzWBPWbRwGRjbbRGrtrfqjCJCjCJgJsZJscFCZcJC�1023 DATA MnnnVMVhTMQhsccVfwqFJgqf�1024 DATA mMShHHppQmHrrBzwtSbWwR�1025 DATA pWWGJMJJwlnZSqjWmvSWZC�1026 DATA gtHrLttDtgFjjqRZZCrjpp�1027 DATA bFtbTpHFHLbfLFbHVttccttddJGQdJzTwdTzJlMnMBwwJJ�1028 DATA JhqHFhVMzJPQcdcVncdc�1029 DATA NhgfwSjwCWwltSfnrnRWZdpcPrrRnp�1030 DATA NNhlltBjssNBgwLFFvDmDqLzHqBB�1031 DATA LnFrnddfrLnMFjWzpFhcWpjpFc�1032 DATA ntCwgtNggCqCgCqqPPltvcjjhvmWhmvDzTzDzD�1033 DATA lqlVQgVCSPVllVQSNGMHHrdQsHrJJBnMHHJf�1034 DATA ZGZcRZNWpcHZhJfbbNblrfrgllNr�1035 DATA stBMtzCCsHMfFQjfSSPgtt�1036 DATA qmszdsCzMncdGwdWZGvH�1037 DATA PccqPqbhvSvvvtWNjTtWsWcscp�1038 DATA gRwdDzHJQgHzfdRhgHRffzwsTTjTTCjNjssCpmWWDjtCLW�1039 DATA zdRMwdRHhGJwgHlnGGSFvvSrnSrr�1040 DATA rRpMJtPwrcCTNNQNMZQm�1041 DATA mDWdWVddbbbmBflFhvTHjjQjfZTgZgLLfH�1042 DATA bhBbFFnDVhdddFBhdmpJRrzStJmwnPzcsJ�1043 DATA RjlpRRWzzRGRmGzlCRRlQjCgtvTJTtJrTPttrWTwhFvvVJFT�1044 DATA bSBdLLqbcqcLndLHZNqcZdBDPrVTDDTJSFrJJvVthTwwDS�1045 DATA cqVsnBfHffVdqnZccGMmCsGzQmjsjlljgz�1046 DATA wMzJhLtwbnMWtHcFCCFqFNNbgq�1047 DATA fMlMfjrRRmdmGCGVVCHcVqcVTC�1048 DATA MmRRRlvmQWzpvnZpwJ�1049 DATA gRmgMRMmRwzzmwHbwcTNqPDVBbPTZVqPNZ�1050 DATA fWHphpGFpfJrrhPsNTNZVsNVhT�1051 DATA WGfJdvltJJfHrJpRgvMRMSwRznwMmw�1052 DATA htJFGsGspCppCFCGthCdpmJmgmWZfqqzWzlWcfgZHgzHlg�1053 DATA nwVMjVcVcWlbnBlfWB�1054 DATA wcNDTvPPDMFJLLppDGDD�1055 DATA hjCBgPbvMvmQDzlWnWjm�1056 DATA HrHtgZRRRNwczDWwwDzsQQWW�1057 DATA LpTqNtFtLFqHLHRrqgFHffVVBChvhhVPBCPhbPbp�1058 DATA CwpbCwjGqSjVllpGCllBfhZZRDPNcPPNvLLLDSDN�1059 DATA WshFFWsgTHsdMzQvPczLfLZDZRcLfR�1060 DATA rWsJQTMhWWHdsQTgsFJgllClVpqVbqnGblCppCVr�1061 DATA gRBSGcBDBSJSvPQwrTFLjggQTQ�1062 DATA HMMnHHHZfFVFrrMT�1063 DATA HhlhppCNcJzCTtBT�1064 DATA CCffCCmRLTsQRPHQQMPF�1065 DATA dWdbgcDSNclbbdwdSqHsvHPQPTPJplPMFMGJ�1066 DATA DWbDNcqZDSWSccNTVBCzVVfmBVZnVz�1067 DATA BnsrrvZwBsBSJrrrqSTgJQjCbCjgbCHDJgJFjQ�1068 DATA hLmGlnLmGWcjGDgfFFjQdF�1069 DATA hhWPmhPtczWpNRmppzRhLchMsnwZvTMZvVSwwrsNwSsBvr�1070 DATA tDCCltNVttJhNGlMPSWdqBqSjM�1071 DATA RFQcpcRTpFcnFzdLmLSWjMSSBLSQ�1072 DATA jwzzczpFbwnHcDCsthDJJsNbst�1073 DATA dLRWTHSwTmTwTcTWvQNVVQCvVvNFps�1074 DATA GnBPtBMJBPrjGGJMjrlqChNpNlsnhVFhQsVQ�1075 DATA JtMtGJfrJgDJjPjRTZLdFcRZRmwSDH�1076 DATA VSccPJSBLgZPDLDQ�1077 DATA zfpLMmLsHQGqgQHnDD�1078 DATA zdLLMssmrdfhddcVdJtScB�1079 DATA VvpTVQHSqSHSHqqHJVmRJVHpgDBwDgjcDDDgZjBZBjwBZbRw�1080 DATA PCdssGlstdWslFPfNPrtClGjwBgBJgJNwcjBjBgZwwMBJD�1081 DATA tlJldhdhdsdhTqSTqVQqQq�1082 DATA VGqTcTqbpPwrjfbl�1083 DATA BvntnZNNsLZvLszSnCsvJthlfjTrZwlrjrpPlwlhfwrl�1084 DATA QBttJLvTsFdQcqWmQRR�1085 DATA fjcjhmjBvcvcSvcZ�1086 DATA HMwZtRQQpGGRgzMvLnWWnbLlSntlbv�1087 DATA JQPzzJHqQRqGMMQwHwzDZZhmmPfjDjmjsCZhPj�1088 DATA cBlZZMfBrCBMwBMCvQzTwFbQzPnbwjTbTg�1089 DATA WtzpVDzmtthzGFQTbTThnnTQQg�1090 DATA sGWstpHdpGDmdHdmGmmmJNstRMrCcBSfBSzNBNRrSRNMcMMv�1091 DATA mMPDVBZZLSmRdcFpjr�1092 DATA fggGGfbfgQStjjsdbtdt�1093 DATA gNqQgCQlNCCJgJHvnvnHMjPHjv�1094 DATA bLsRQrQsGQbLrbRZMGgbJJBJFtlFFngJphhcfBBq�1095 DATA jjdHCCjfVNmmmNDFcBcpBthcplFDFq�1096 DATA jmvvmWVjjHTCVvNjSbQGLrRzwMWsMRwfGG�1097 DATA sJNCsCFFCNPhCzlrSvRrvwhRjj�1098 DATA MMGMTwpMHGzrGczzlG�1099 DATA qVmwgHtDtmCdWCsNFmNJ�1100 DATA fmhWhjVjNpqRRJjwRw�1101 DATA gnGQGDDCgSsCvPlvPgnPgnPtwqbpHRHqHdJpzpQJJJRJRF�1102 DATA wgPGsDGPsZgGgBmBWNZNfLWWrZ�1103 DATA WdsCVtjWWWHRRqLLHncC�1104 DATA fbSpMSPSZHRRcqlpRc�1105 DATA cGMmJmfMPPPccZMNQPWvjTtdTjvgmdtTsggw�1106 DATA tPBQhHWBtQHgWQCtLwddcGnfpGpwwnbhVb�1107 DATA vqQzTNJJJTvRrTNFJsZrrzFlbbfcnVbbcwmGGGpVzmddcdfd�1108 DATA NSSqJvFFFFFQjQCjQDSDPD�1109 DATA rQZnVVrZmZmgSWqHrSzHPC�1110 DATA LGFLwcMBcllBjFNwGjltggSqSWCCzvNgSqSHtt�1111 DATA wdhqqGBwwqGMcDhcwdFFbbJppZbssbfZQsQsdVQm�1112 DATA lqBZlsjVTbVqmFrSnTFSvwncPP�1113 DATA zQztHfZQtWLJzPFnnQScFcFrvS�1114 DATA ftHJWHhfttHWffhtgLNfZDWbdqBqjbVssBDCqCdCsmClGG�1115 DATA MlbWFTJQFbFFzRdNjNtjdtBT�1116 DATA srwnrsLVHzQPQsjjSQ�1117 DATA gLpnwgnwnHCvcHHcvwgCvGFFhWGmFmqMMbQFQFFhlGmJ�1118 DATA qqNcJgJccdqhsqgsggdgqgcrtfNWNZzVbvVFzttMfzbVMZ�1119 DATA GLlpPpCpwPLDGvrFVWrWWbZt�1120 DATA DlRCDDLSjTjDjSRSjPClwnwSHHHQmmQvTJcQgvddHsqdcgmB�1121 DATA jmRjRbRQLLZbPnbrcTTHHHNn�1122 DATA MfhhmmwtvStrpnJJHc�1123 DATA fgqlvfhvFzMwqfvMfFWlmMvLZsdQsZVdCdLZdGQjRzdQjD�1124 DATA lTPcDlVdTlVVMSDfTJccVzdlmMgGBmppgBmnHGHqHqQqqQMH�1125 DATA ZRjWFPsLNLLrPhWNtnBBvnpGpHGpQmHnmR�1126 DATA CtwssCNLrsZWjrjcbfPzwJJJffDbTl�1127 DATA cjMvvqpJFqhShNCRQR�1128 DATA ldtDgQZDPdzztLZgPTtfbnStfBSbNNSbnbhhSS�1129 DATA TDsrzsZZZTFHmVHjcsQW�1130 DATA BQmQchrmBddcmZZdpSgrpswWWswVsnnnDJVnnZFnGN�1131 DATA TfStMPLTHvbvRVGnHGsNnJWFNV�1132 DATA qtvMRMMPbbPMLqRPvRTRzMjSSmprpQdBchlmmgldgjzm�1133 DATA nRRnvNPhrbZDLjvS�1134 DATA HCszMwcHHcLDrbQDWr�1135 DATA ptszqwdMbnnhPBqN�1136 DATA QbzhhfbFhBbpbzwwLjLJjSjltL�1137 DATA mNndGrSStHJTJLln�1138 DATA rDMMNVWdVpCbSbSp�1139 DATA tDTSTSTTTTJDwqjWqBWttdjg�1140 DATA nNPmVfnGfPNVLmNzfnzPVFMjdpBwWZwZHwBLBqgjqpWH�1141 DATA dfGPfVQGVPhGzlmnzSvsSTDJhTbTTrrSRD�1142 DATA ZfgtZBptBfRQNQggjjrjjwmwsQJPzrwm�1143 DATA TwTGGwTwzzsJzTsH�1144 DATA lFvwqFLhFMnqcLlVLMLfptNWppppDBDbDfbFgW�1145 DATA mjftBfVPjttmjcSjcPttzJlvnrwvTRrTnvwvlRrHHTHRTR�1146 DATA WZDWDNLFWbZbcMDWGZDbNdMCRsnTdTvdnqrHCTrvsRRvwC�1147 DATA DQFZLNNgtBJQcBzJ�1148 DATA HbZQZFVbQVpQplQZGbGchDffltfLtmdgDjggTmtm�1149 DATA zWzRCdnCRBRdJrzDjLhDthjLJTTtjq�1150 DATA CPPnwSrRdRSzCGMcZZZMwFwMZF�1151 DATA WBQqNQnQllwnWQlvBBMlljHTqqFdGfmTdFfcFTFFcqmP�1152 DATA rsRRVrZhrzbtpZRRhFDmPvfFFrfTdFHGvc�1153 DATA VtSCtSLbtsZVtttthCbJSWSlJlwJQggWWglvwW�1154 DATA QfFLWCvRfSLFCtvtFhNcqDDcGVbhGcqh�1155 DATA ZVgrdZZPPZZzPwdjzZhmccsqJGqDdsDDNddD�1156 DATA pzzwpgZzZZTznZnjZZzPVRLQLlvfSlQRSpWlCvtSQv�1157 DATA RtcHhRMcrHhBrrTNDVBNLqLqQqfBPm�1158 DATA wCbWzWbvdWCjbWppmtmNmqmLLsfsNV�1159 DATA lwjWdbztgHTgggnnnR�1160 DATA flBbzbMfbrTlrMvBCcwPggdmcdmg�1161 DATA VDVVRFZRZSFFhQLSGFQhjSVZCgpvPwLCzpdWWzccwdvvvwcC�1162 DATA hDHRGQVHHQVRZSQGbqqfNTlbHzrbbsqb�1163 DATA MTFdTsZpPTcMpFCPdCBmMBmRfRGBmQgQRRgt�1164 DATA vbDSwvhzznnbbhDWnvSzRBgQQLgLQltqtqlmwfGB�1165 DATA jVjhfSnNDNbzzWzjWSjrCFNpcHdpTTJddJFpsJcc�1166 DATA ZrrZPHfChPdDPVVdDq�1167 DATA vFmsbTsmSbbBJssmSBvTmmnTrnrwlWqwVlLrVTLLTWqL�1168 DATA JrFbpsvFBMBmzBzFStcRhjZjfCCpZNCtct�1169 DATA TGgRrTggwwtvtQtdCdQNqN�1170 DATA sJHZJVZHDBpFBZBBNzNdhzdpSzddvqhN�1171 DATA VZcvFsJVFvsmvssbcnrwbrnGMbMlRn�1172 DATA SdcdWzMJdSMWMddZJdVcmBmwrwqrrnVnVNtr�1173 DATA mlQHCfgbjsfQTbfCBNtVhVnntVBnVh�1174 DATA HLDslDDmblgHfvLHPJFSZPpDFpFFpdPS�1175 DATA qNqPNJvcSzGGPQnGQp�1176 DATA bWhbgsshZWBhltthhbWtCsZNjrzpnQnnznnjtQFrjGjVFGnn�1177 DATA bRDNddhNdDsZdNChmvDmmwqqvLqwSJDq�1178 DATA TnSfPnCSmnSgpSTmfLzfMFLWFJJLWWsBsr�1179 DATA jdQjcdqDVVwDcPsPzMRJMLqPqR�1180 DATA PGhGchjhtZlTGTHCCb�1181 DATA ZZRrJJqSqJwNFFphsGsLPJ�1182 DATA blcMCflvTTPFFNpVvsFv�1183 DATA CcTlltTmtmMdmCmnlllBDDSDQSwSjRDQSdswjR�1184 DATA MCCPNsnQFWbvvTPF�1185 DATA CcCVJJhjVJZRtcCclDDlbcbTcGFFDz�1186 DATA HpjtVwVZfpjJVhZgCVtLmrBwdMrLsNNsMmdLqB�1187 DATA TJTDTnrFzzdWgWGJSSMJwg�1188 DATA LhPVttjtLmsPqqqVsVpsjLlgWlwHvGnlHWlgHlGgwvlP�1189 DATA mQshLhmsnsqZcqhZqpshsLVpNTNbBfzTRBQdFRzNNFBTdbzR�1190 DATA ZGqMLGqvJsJsMJmd�1191 DATA PDVQPfPcrrcFrrzrTdgCjSSCzgszmlJjBj�1192 DATA PfRtVfttVcWtVJrfbGqvwqLpRRwvpppH�1193 DATA HmLmMSnnWnrTrnvpqFCHVGfzVFVHQj�1194 DATA ttsstRhhcNwbswNtdwsdNPFfjzQppQPjfGGfQVPCpR�1195 DATA bbsDNtDcbhstsSZLDmSSgCmnSS�1196 DATA tfwBBLcJVrDnqvLv�1197 DATA zmWWJRZhWRRRGRNdgSZGgWTvpnjvrDqvpHjjzrpnrPDnHj�1198 DATA NdJmSGZWRhRNsghWTJmdGfQCtllCcFMwffBftsfMQc�1199 DATA lTLgTghpGZJDBrnGWnnm�1200 DATA VlRwlHttwqmHHbDWHJ�1201 DATA twldzCvsRdsFFtRtSczTjSgMcfSpSzTM�1202 DATA pBpMBTcSlNtMcTfFCmbPDzCDLb�1203 DATA JgrjjJqhGZQrQrZhnJGDDCZfvPDdDzFFdzfmZL�1204 DATA QHhqqnrVJJPhHrnGQgwMNwMMctcWRWSBMNtNsW�1205 DATA FJrlhpcfDCcFWpNpwWwjNQwz�1206 DATA RTTvPdbjWzMbnNNM�1207 DATA GRZTGggGgtvjGcqrBcttcDlFhr�1208 DATA pMRVdVbbMMMSdWWqHpCTvTjnBBBFFGGB�1209 DATA smNfZgcsNrcmzggZszsgRnPGFHjBPTBTjGjPTBNj�1210 DATA RmwgsmgfrzzsZtfgZLQQSVWlwbdMhlwdqQ�1211 DATA mRRjPmLrrSmzSczSzPgVZFpTCpZCMWrZQMQrZJZT�1212 DATA BvdbHNdnJtvBDbqqdBlvwvqpDQMpZQFMCsQCspZTMMCZCF�1213 DATA nBlfbfbndJBHPfLRfmhhhhPL�1214 DATA ScJDFBNLLbVRqVfZ�1215 DATA rWrgmdMgnnBhBtnntf�1216 DATA CwBWWMgCwddCgwsQjsrvNvlTJzSNHwNTHFJHzS�1217 DATA vnddCrNpCgtjLdSdgCgCCvLnWqDhWBQhHqQHDqBhQHDHNNDl�1218 DATA wPTVfVTJmZGJVJGffZBwHMWlWlHlWtbQDqbl�1219 DATA mGsJVVJsTVTTmtJVzzTJjdSjjprzCvpSLSCjdnLg�1220 DATA zLNggsVHmNNsssLmwzLQZLwDRvGQBqGGDDBBvvDBDqPhRG�1221 DATA WrCjbtJdbFhBRglGgjqv�1222 DATA JWCJcWcSdWcctnJCcJJJbcbmzwwznmgLzNzmLHmHZMwsZL�1223 DATA JRRDNNhhszMTzNMwCG�1224 DATA MnHPqmgmHjPnnvjqdmjFLQwLwTLwzTwTdGLCzS�1225 DATA BnPPZqmcfqgqnnZmBmqjqhfWVJlRMlhWlRDlVsssbh�1226 DATA nmTLTqsvqnwqsvwDPnLHdNVrMMHHCBlmVdmGNV�1227 DATA RgRpcJhQRfQZcJbWhQpBHCjVCdjCVGdddMllHp�1228 DATA fczbZhzbtcZfgRRBcWSPPwFsLSDswSwTsSzw�1229 DATA rbFpzFCVBrrBZCjbCzHHBVdJllGDLsLrDtsswswstGJs�1230 DATA QNhNNnNnnQhNWSnRhnJtdpJpJtMDGsGLLtsQ�1231 DATA ScmRvNRNnWWvNvNvfpTccjVZbqgZgVzqHjCjTVTVVq�1232 DATA BTppwCwBpwwBqnjlHcLBTHnbbSbDthsSSJgsnDDRgJRD�1233 DATA FVGzzvrdMGSSsdtZtZgd�1234 DATA QvQtvtGFlBLLjLQL�1235 DATA gsWWsNMjwgPMPWnMjShHHZSZbmZbbmTSnb�1236 DATA rlCvVQrCfqffpVjQRqCCvDDTTTmmZhZTmZhThFmhhZZhqb�1237 DATA CDDVJpVfrJJVJLMNzMwWwLwj�1238 DATA nHrcsZrssPcBPtQJLJtQQCZQpV�1239 DATA GFWzNzNFdNbTMMqbGTqTqzqqdLCpfDQCtRVVCLtdCfQsdCCt�1240 DATA TlNqGTWFNmMMszhGsmFTWGFzwHnvSjgPgvgSjllBvBnvwPBB�1241 DATA mpMggjgMlmtjtGMwZpcSscBlcsSblhsfSdfs�1242 DATA zzPVDRrLrCTQNCzNRTVFNLhBhBSqdQbcfSsJBJdbjJfB�1243 DATA RPTRPTVNTFzVrHVDCrTHmHtwMvwWMmtwmGjWgvGv�1244 DATA rLMcvfHVfMgLFvfNnBBzwRbBwnrGNs�1245 DATA dttJjJCtdjmwzwBCRRCqcs�1246 DATA TddDQDJDtQJtcJFpPQHPQMvfQlFL�1247 DATA LQSqqpqTCSJcsDcqQMMhnnjMjppZhwHZbZ�1248 DATA NRtvtmgmvdBffgtVCBWVRgFbPzHbMHbnwwjMPZfHbPjzPP�1249 DATA RNtvCvNdgtNNmldgvCFRNVLsQLqJcQGJJrccGSlDLDLr�1250 DATA GdwwqqqwGVtjdPvTCplbHTPbPzPTpp�1251 DATA RpLmLLpFfNsgTzclhzClThgH�1252 DATA ZFsWZLFZJsNsnWsnRsRfnfJQGBttjdGJjBvvwjdpjjttvj�1253 DATA tfPzzLrrdrQlTlvn�1254 DATA qJRBhNhNGVRBFRTlnJvCmvmJPCCl�1255 DATA VVPDNchNMVFGRMFcRVBjsZZcttSLSZzzStcWtZ�1256 DATA pTrwTrnjtttjprTSTNTQfcjcgPsPZfPgjdgdsQ�1257 DATA mCmCzvzhmJDHzJDbhFCDPsgddcsfcdsbdgVRpdVs�1258 DATA zqJzFCDhmqvGhMmCvmGhMCGJnSlnllSBLllLMtNpWtpNBnlt�1259 DATA JBhJrFLhGrnJZrlcbffndnggfggf�1260 DATA jqmWMGGSsqCsmpjmsDQzlcHgbtdzjjlVfctjHV�1261 DATA GWSmSCspCsMSpRmSmqMMCBvFLJLhTTwFhRFLLBTwrv�1262 DATA BCdWccqcqpQqrsNgGsWMgfNW�1263 DATA lFttLzzLwnfsLrsNsNLG�1264 DATA zjNlznlwvRPZnltwvPFnZRCbmjCcqjpcpQcqVVdbdVBm�1265 DATA CwTbbCGNFHtHwwjSjJpzjLMdMMzT�1266 DATA rscqqVvWgWrZMjrlmSzzmLrM�1267 DATA WPqqZnPqgncnBQQVRbCDwRHGSFHPwRNw�1268 DATA ZQnZwWjFvdsHwBJltfmfSlsqlJ�1269 DATA gPprhMDTpMpPMVNqNRqNlJhltJdJ�1270 DATA pLGCcCrgppCrVcMpdzjvzvjLwQQzFjwzHF�1271 DATA NmmmvfqcvmLSQhCLvtvL�1272 DATA TVlWTZVJZJsFbwWbQQhtQgLFCnSgghLt�1273 DATA hZJTJZhwZlRJrJWHVlblMBffmqfdNMjdGdBBqqcH�1274 DATA GJJfLfptGqqqnsVqVVjjDnNc�1275 DATA mZPSvPmBCdmwdCLDshSbRnnDDhRL�1276 DATA gvBrBvPBPPZCTLZmwmrgQdwfTJMHGzHfWffJzFzttHWFzW�1277 DATA sBMvmzWzmFmNWJfffZNLfbqZbtZq�1278 DATA jRQVRnhhppnVhjgnDLttLqbLqLQfDLss�1279 DATA jRRgpGVGhwhnspgpRppwSnBvMMcWvGczGJJHdmHJmJFF�1280 DATA VCLHFwHMhLghHHWhFFgWNMMVzmdmbvWdJqBPJPPBppqmBdzm�1281 DATA SRTsjGZTsZZnSnGZGqdBmrqPvmqqqsPpmv�1282 DATA GvQSGtZSQllVhtLMcLLNMH�1283 DATA GsNdWpdVWGSHjFCWCqFFgqngvW�1284 DATA mRQTcrLRmZTPRLPZfqqqHbDDDgFvFnvqzQ�1285 DATA hfZHrwwmcZRwlLfwlmrRjMJJsVjslVNBGNjpVBBG�1286 DATA pllpztRqBBvvGPpG�1287 DATA QQhhZQbVcZQTPMWWGbvvbMHM�1288 DATA cwgCQCLZChQwwLZVzCrzzqNCzrDqdFPF�1289 DATA bgcLPvvpcbdsbpSsHRTCqsRfWfsHRm�1290 DATA lZlQtthrnlVMmTHqqqqHSChB�1291 DATA rDtlzttnlSNrMtQjZVrcgGDLLddcdcpPgPGJJd�1292 DATA jvGbvLLQDSGlRmmSLjlDmRQggFBrMCwWdsBFWBFjdrrWrr�1293 DATA PpTfcPZpNTVNpHzTzzzpPJhBcwrrhFsrMdFcMCBFhgMF�1294 DATA JTTqdtfzfzJpqffNdTTHGtQRnmDQGGLQQlQRbblD�1295 DATA CQQCshCMwgQhMdjWJFBPpbjgmmWj�1296 DATA SNNvcGNSZSTDtGDcczJJBmzbjBJjmppbppms�1297 DATA cDtfDVNTGGGNNrwLLwHdqLhfLs�1298 DATA ngghZCChzhNjjNbbJfdh�1299 DATA slPPRLlBBlVRMvRllLLHvcpcdFfJjvdFpfHfcZ�1300 DATA RDZPZBLmPVWDVrQtnzSTmgTwmTSg�