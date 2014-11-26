.class public Lcom/diotek/ime/framework/engine/xt9/Xt9core;
.super Ljava/lang/Object;
.source "Xt9core.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "Trying to load libXt9core.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "/system/lib/libXt9core.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "WARNING: Could not load libXt9core.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ET9AWASDBAddEntry([S[SSS)S
.end method

.method public static native ET9AWASDBDeleteEntry([SS)S
.end method

.method public static native ET9AWASDBFindEntry([SS[SS[S)S
.end method

.method public static native ET9AWASDBGetEntry([SS[S[SS[SB)S
.end method

.method public static native ET9AWASDBGetEntryCount([S)S
.end method

.method public static native ET9AWASDBInit([BS)S
.end method

.method public static native ET9AWASDBReset()S
.end method

.method public static native ET9AWBreakContext()S
.end method

.method public static native ET9AWCDBInit([BS)S
.end method

.method public static native ET9AWCDBReset()S
.end method

.method public static native ET9AWClearActiveLanguageSwitch()S
.end method

.method public static native ET9AWClearAutoAppendInList()S
.end method

.method public static native ET9AWClearContextBasedPrediction()S
.end method

.method public static native ET9AWClearDBCompletion()S
.end method

.method public static native ET9AWClearDBPrediction()S
.end method

.method public static native ET9AWClearDBStems()S
.end method

.method public static native ET9AWClearLDBAutoSubstitution()S
.end method

.method public static native ET9AWClearNextWordPrediction()S
.end method

.method public static native ET9AWClearPostSort()S
.end method

.method public static native ET9AWClearSpaceSegmentation()S
.end method

.method public static native ET9AWClearUDBDelayedReorder()S
.end method

.method public static native ET9AWClearUserDefinedAutoSubstitution()S
.end method

.method public static native ET9AWDLMAddWord([CS)S
.end method

.method public static native ET9AWDLMDeleteWord([CS)S
.end method

.method public static native ET9AWDLMExport([BI[I)S
.end method

.method public static native ET9AWDLMFindWord([CS)S
.end method

.method public static native ET9AWDLMGetDataSize()I
.end method

.method public static native ET9AWDLMGetExportMaxDataSize()I
.end method

.method public static native ET9AWDLMGetWord([CS[SB)S
.end method

.method public static native ET9AWDLMGetWordCount([S)S
.end method

.method public static native ET9AWDLMImport([BI)S
.end method

.method public static native ET9AWDLMInit([BI)S
.end method

.method public static native ET9AWDLMReset()S
.end method

.method public static native ET9AWDLMScanBuf([CIIIIZ)S
.end method

.method public static native ET9AWDLMScanBuf([CIIIIZZ)S
.end method

.method public static native ET9AWDLMScanBuf([CIIIIZZZZ)S
.end method

.method public static native ET9AWDLMScanBuf([CIIZ)S
.end method

.method public static native ET9AWDisableDBs(I)S
.end method

.method public static native ET9AWEnableDBs(I)S
.end method

.method public static native ET9AWFillContextBuffer([SI)S
.end method

.method public static native ET9AWGetEmbeddedPunct(S[S[Z)S
.end method

.method public static native ET9AWGetExactInList([B)S
.end method

.method public static native ET9AWGetPostShiftMode([B)S
.end method

.method public static native ET9AWGetTermPuncts(S[SB[B[Z)S
.end method

.method public static native ET9AWGetUDBDelayedReorder([B[B)S
.end method

.method public static native ET9AWHwr_AddPoint(II)S
.end method

.method public static native ET9AWHwr_GetLanguage([S)S
.end method

.method public static native ET9AWHwr_HandlePenDown(II)S
.end method

.method public static native ET9AWHwr_HandlePenUp(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;B[S)S
.end method

.method public static native ET9AWHwr_Init(S[B[BS)S
.end method

.method public static native ET9AWHwr_ProcessStrokes(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;IB[S)S
.end method

.method public static native ET9AWHwr_SetCapsLock()S
.end method

.method public static native ET9AWHwr_SetLanguage(S)S
.end method

.method public static native ET9AWHwr_SetPadSize(IIII)S
.end method

.method public static native ET9AWHwr_SetRecognitionMode(B)S
.end method

.method public static native ET9AWHwr_SetShift()S
.end method

.method public static native ET9AWHwr_SetUnShift()S
.end method

.method public static native ET9AWIsNextWordPredictionSupported()Z
.end method

.method public static native ET9AWLdbGetActiveLanguage([S)S
.end method

.method public static native ET9AWLdbGetLanguage([S[S)S
.end method

.method public static native ET9AWLdbGetVersion([SS[S)S
.end method

.method public static native ET9AWLdbInit()S
.end method

.method public static native ET9AWLdbSetLanguage(SS)S
.end method

.method public static native ET9AWLdbValidate(S)S
.end method

.method public static native ET9AWLockWord(B)S
.end method

.method public static native ET9AWNotePhraseDone([SS)S
.end method

.method public static native ET9AWNoteWordChanged([SJJS[S[SS)S
.end method

.method public static native ET9AWNoteWordDone([SJJ)S
.end method

.method public static native ET9AWNoteWordDone([SS)S
.end method

.method public static native ET9AWRUDBInit([BS)S
.end method

.method public static native ET9AWRUDBReset()S
.end method

.method public static native ET9AWRegisterMDB()S
.end method

.method public static native ET9AWResetApplicationContext()S
.end method

.method public static native ET9AWScanBufForCustomWords([SS)S
.end method

.method public static native ET9AWScanBufForCustomWords([SSSSZZ)S
.end method

.method public static native ET9AWScanBufForCustomWords([SSZZ)S
.end method

.method public static native ET9AWScanBufForNextCustomWord([S[S[SS[S)S
.end method

.method public static native ET9AWScanBufForNextSpellCorrection([S[SS[B[S[S[S)S
.end method

.method public static native ET9AWSelLstBuild([B[B)S
.end method

.method public static native ET9AWSelLstBuild([B[B[S)S
.end method

.method public static native ET9AWSelLstGetWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S
.end method

.method public static native ET9AWSelLstPostShift(B[B[B)S
.end method

.method public static native ET9AWSelLstSelWord(B)S
.end method

.method public static native ET9AWSetActiveLanguageSwitch()S
.end method

.method public static native ET9AWSetApplicationContext([C)S
.end method

.method public static native ET9AWSetAutoAppendInList()S
.end method

.method public static native ET9AWSetAutoSpace()S
.end method

.method public static native ET9AWSetCompletionCount(S)S
.end method

.method public static native ET9AWSetContextBasedPrediction()S
.end method

.method public static native ET9AWSetConvertSymb()S
.end method

.method public static native ET9AWSetCustomEmbeddedPunct(S)S
.end method

.method public static native ET9AWSetCustomTermPuncts([SB)S
.end method

.method public static native ET9AWSetDBCompletion()S
.end method

.method public static native ET9AWSetDBPrediction()S
.end method

.method public static native ET9AWSetDBStems()S
.end method

.method public static native ET9AWSetDefaultEmbeddedPunct()S
.end method

.method public static native ET9AWSetDefaultTermPuncts()S
.end method

.method public static native ET9AWSetExactInList(B)S
.end method

.method public static native ET9AWSetFastAdaptation()Z
.end method

.method public static native ET9AWSetLDBAutoSubstitution()S
.end method

.method public static native ET9AWSetNextWordPrediction()S
.end method

.method public static native ET9AWSetNextWordPrediction(ZZ)S
.end method

.method public static native ET9AWSetNiceLatency()S
.end method

.method public static native ET9AWSetPostSort()S
.end method

.method public static native ET9AWSetSelectionListMode(B)S
.end method

.method public static native ET9AWSetSpaceSegmentation()S
.end method

.method public static native ET9AWSetSpellCorrectionCount(S)S
.end method

.method public static native ET9AWSetSpellCorrectionMode(BZ)S
.end method

.method public static native ET9AWSetSpellCorrectionSearchFilter(B)S
.end method

.method public static native ET9AWSetUDBDelayedReorder()S
.end method

.method public static native ET9AWSetUDBDelayedReorder(BB)S
.end method

.method public static native ET9AWSetUserDefinedAutoSubstitution()S
.end method

.method public static native ET9AWSetWordCompletionPoint(S)S
.end method

.method public static native ET9AWSetWordStemsPoint(S)S
.end method

.method public static native ET9AWShouldRemoveSpaceBeforeWord(B)S
.end method

.method public static native ET9AWShouldRemoveSpaceBeforeWord(SZ)Z
.end method

.method public static native ET9AWSmartReselect([CJJS[B[B[B[B[B)S
.end method

.method public static native ET9AWSysClearPostSort()S
.end method

.method public static native ET9AWSysInit(ZB)S
.end method

.method public static native ET9AWSysSetAutoSpace()S
.end method

.method public static native ET9AWSysSetCompletionCount(S)S
.end method

.method public static native ET9AWSysSetPostSort()S
.end method

.method public static native ET9AWSysSetSelectionListMode(B)S
.end method

.method public static native ET9AWSysSetSpellCorrectionCount(S)S
.end method

.method public static native ET9AWSysSetSpellCorrectionMode(BZ)S
.end method

.method public static native ET9AWSysSetSpellCorrectionSearchFilter(B)S
.end method

.method public static native ET9AWSysSetWordCompletionPoint(S)S
.end method

.method public static native ET9AWSysSetWordStemsPoint(S)S
.end method

.method public static native ET9AWUDBAddWord([SS)S
.end method

.method public static native ET9AWUDBDeleteWord([SS)S
.end method

.method public static native ET9AWUDBFindWord([SS)S
.end method

.method public static native ET9AWUDBGetWord([SS[SB)S
.end method

.method public static native ET9AWUDBGetWordCount([S)S
.end method

.method public static native ET9AWUDBOnlyReset()S
.end method

.method public static native ET9AWUnregisterMDB()S
.end method

.method public static native ET9AddCustomSymbolSet([S[BIBB)S
.end method

.method public static native ET9AddCustomSymbolSet([S[BIJBB)S
.end method

.method public static native ET9AddExplicitSymb(SBB)S
.end method

.method public static native ET9AddExplicitSymb(SJBB)S
.end method

.method public static native ET9CPAddToneSymb(B)S
.end method

.method public static native ET9CPBuildSelectionList()S
.end method

.method public static native ET9CPBuildSelectionList([S)S
.end method

.method public static native ET9CPClearComponent()S
.end method

.method public static native ET9CPClearContext()S
.end method

.method public static native ET9CPClearFullSentence()S
.end method

.method public static native ET9CPClearNameInput()S
.end method

.method public static native ET9CPClearPartialSpell()S
.end method

.method public static native ET9CPClearSmartPunct()S
.end method

.method public static native ET9CPCommitSelection()S
.end method

.method public static native ET9CPGetChineseLdbNum()S
.end method

.method public static native ET9CPGetPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S
.end method

.method public static native ET9CPGetPrefix(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S
.end method

.method public static native ET9CPGetPrefixCount()B
.end method

.method public static native ET9CPGetSelection(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;[B)S
.end method

.method public static native ET9CPGetSpecialPhrase(BSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;)S
.end method

.method public static native ET9CPGetSpell(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S
.end method

.method public static native ET9CPIsAWActive()S
.end method

.method public static native ET9CPIsMohuPairEnabled(B)S
.end method

.method public static native ET9CPLdbInit(S)S
.end method

.method public static native ET9CPLdbValidate(S)S
.end method

.method public static native ET9CPSelectPhrase(SLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S
.end method

.method public static native ET9CPSelectSpecialPhrase(BS)S
.end method

.method public static native ET9CPSetAW()S
.end method

.method public static native ET9CPSetActivePrefix(B)S
.end method

.method public static native ET9CPSetComponent()S
.end method

.method public static native ET9CPSetContext([SI)S
.end method

.method public static native ET9CPSetFullSentence()S
.end method

.method public static native ET9CPSetInputMode(B)S
.end method

.method public static native ET9CPSetMohuPairs(S)S
.end method

.method public static native ET9CPSetNameInput()S
.end method

.method public static native ET9CPSetPartialSpell()S
.end method

.method public static native ET9CPSetSmartPunct()S
.end method

.method public static native ET9CPSysInit()S
.end method

.method public static native ET9CPTraceInit()S
.end method

.method public static native ET9CPUdbActivate([BS)S
.end method

.method public static native ET9CPUdbAddPhrase(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;[S)S
.end method

.method public static native ET9CPUdbAddPhrase(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;[SB)S
.end method

.method public static native ET9CPUdbDeletePhrase(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;)S
.end method

.method public static native ET9CPUdbGetPhrase(SSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;)S
.end method

.method public static native ET9CPUdbGetPhraseCount(S[S)S
.end method

.method public static native ET9CPUdbReset()S
.end method

.method public static native ET9CPUnselectAll()S
.end method

.method public static native ET9CPUnselectPhrase()S
.end method

.method public static native ET9ClearAllSymbs()S
.end method

.method public static native ET9ClearCallback()S
.end method

.method public static native ET9ClearCapsGesture()S
.end method

.method public static native ET9ClearDownshiftAllLDBWords()S
.end method

.method public static native ET9ClearDownshiftDefault()S
.end method

.method public static native ET9ClearNextLocking()S
.end method

.method public static native ET9ClearOneSymb()S
.end method

.method public static native ET9ClearShiftGesture()S
.end method

.method public static native ET9DeleteLdb(S)S
.end method

.method public static native ET9DeleteSymbs(BB)S
.end method

.method public static native ET9GetAutoCapSituation([B)S
.end method

.method public static native ET9GetCodeVersion([SS[S)S
.end method

.method public static native ET9GetExactWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S
.end method

.method public static native ET9GetStateBits()I
.end method

.method public static native ET9InitCallback(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;)S
.end method

.method public static native ET9InputSequenceCount()S
.end method

.method public static native ET9IsSentenceTermPunct(SS)Z
.end method

.method public static native ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;)S
.end method

.method public static native ET9KBuildHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S
.end method

.method public static native ET9KBuildSelectionList([B[B)S
.end method

.method public static native ET9KBuildSelectionList([B[B[S)S
.end method

.method public static native ET9KCompatibilityJamoToJamo([CC)S
.end method

.method public static native ET9KDBRecaptureWord([CS)S
.end method

.method public static native ET9KDB_GetKdbNum([S[S)S
.end method

.method public static native ET9KDB_GetKdbVersion([SS[S)S
.end method

.method public static native ET9KDB_GetKeyPositionByTap(SS[S)S
.end method

.method public static native ET9KDB_GetKeyPositions([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;I)S
.end method

.method public static native ET9KDB_GetMultiTapSequence([SS[S[B)S
.end method

.method public static native ET9KDB_GetPageNum([S[S)S
.end method

.method public static native ET9KDB_GetStateBits()I
.end method

.method public static native ET9KDB_GetTapKeyRegion(SSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9Region;)S
.end method

.method public static native ET9KDB_GetTopOfShiftGestureMargin([S)S
.end method

.method public static native ET9KDB_Init(SSSS)S
.end method

.method public static native ET9KDB_Init(SSSSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KDB_IMEInfo;)S
.end method

.method public static native ET9KDB_IsAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z
.end method

.method public static native ET9KDB_NextDiacritic()S
.end method

.method public static native ET9KDB_ProcessKey(SB[S)S
.end method

.method public static native ET9KDB_ProcessKey(SJB[S)S
.end method

.method public static native ET9KDB_ProcessKeyBySymbol(SB[SZ)S
.end method

.method public static native ET9KDB_ProcessKeyBySymbol(SJB[SZ)S
.end method

.method public static native ET9KDB_ProcessStoredTrace(B)S
.end method

.method public static native ET9KDB_ProcessTap(SSB[S)S
.end method

.method public static native ET9KDB_ProcessTap(SSJB[S)S
.end method

.method public static native ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;IB)S
.end method

.method public static native ET9KDB_ProcessTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[JB)S
.end method

.method public static native ET9KDB_ReselectWord([CS)S
.end method

.method public static native ET9KDB_SetAmbigMode(SS)S
.end method

.method public static native ET9KDB_SetConvertSymb()S
.end method

.method public static native ET9KDB_SetDiscreteMode()S
.end method

.method public static native ET9KDB_SetKdbNum(SSSS)S
.end method

.method public static native ET9KDB_SetKeyboardOffset(SS)S
.end method

.method public static native ET9KDB_SetKeyboardSize(SS)S
.end method

.method public static native ET9KDB_SetLocale(S)S
.end method

.method public static native ET9KDB_SetMultiTapMode(SS)S
.end method

.method public static native ET9KDB_SetPageNum(SS)S
.end method

.method public static native ET9KDB_SetRegionalMode()S
.end method

.method public static native ET9KDB_SetTopOfShiftGestureMargin(S)S
.end method

.method public static native ET9KDB_ShouldAutoAcceptBeforeStoredTrace([Z[Z)S
.end method

.method public static native ET9KDB_ShouldAutoAcceptBeforeTrace([Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z
.end method

.method public static native ET9KDB_TimeOut()S
.end method

.method public static native ET9KDB_TouchEnd(FFJ)S
.end method

.method public static native ET9KDB_TouchMove(FFJ)S
.end method

.method public static native ET9KDB_TouchStart(FFJ)S
.end method

.method public static native ET9KDB_Validate(S)S
.end method

.method public static native ET9KDLMAddWord([CS)S
.end method

.method public static native ET9KDLMDeleteWord([CS)S
.end method

.method public static native ET9KDLMExport([BI[I)S
.end method

.method public static native ET9KDLMFindWord([CS)S
.end method

.method public static native ET9KDLMGetDataSize()I
.end method

.method public static native ET9KDLMGetExportMaxDataSize()I
.end method

.method public static native ET9KDLMGetWord([CS[SB)S
.end method

.method public static native ET9KDLMGetWordCount([S)S
.end method

.method public static native ET9KDLMImport([BI)S
.end method

.method public static native ET9KDLMInit([BI)S
.end method

.method public static native ET9KDLMReset()S
.end method

.method public static native ET9KDLMScanBuf([CIZ)S
.end method

.method public static native ET9KDLMScanBuf([CIZZ)S
.end method

.method public static native ET9KDLMScanBuf([CIZZZ)S
.end method

.method public static native ET9KDLMScanBuf([CIZZZZ)S
.end method

.method public static native ET9KDecodeHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S
.end method

.method public static native ET9KDecodeHangul(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S
.end method

.method public static native ET9KDisableChunJiIn()S
.end method

.method public static native ET9KDisableCompatibilityJamo()S
.end method

.method public static native ET9KDisableJoinChunJiIn()S
.end method

.method public static native ET9KEnableChunJiIn()S
.end method

.method public static native ET9KEnableCompatibilityJamo()S
.end method

.method public static native ET9KEnableJoinChunJiIn()S
.end method

.method public static native ET9KEnableNextWordPrediction(ZZ)S
.end method

.method public static native ET9KFillContextBuffer([SI)S
.end method

.method public static native ET9KGetHangul(B[SS[S)S
.end method

.method public static native ET9KGetHangul(B[SS[S[B)S
.end method

.method public static native ET9KLdbInit()S
.end method

.method public static native ET9KLdbInit(SS)S
.end method

.method public static native ET9KNoteHangulDone([SS)S
.end method

.method public static native ET9KRUDBInit([BS)S
.end method

.method public static native ET9KRUDBReset()S
.end method

.method public static native ET9KSelectHangul(B)S
.end method

.method public static native ET9KSysInit()S
.end method

.method public static native ET9KUDBAddWord([SS)S
.end method

.method public static native ET9KUDBDeleteWord([SS)S
.end method

.method public static native ET9KUDBFindWord([SS)S
.end method

.method public static native ET9KUDBGetWord([SS[SB)S
.end method

.method public static native ET9KUDBGetWordCount([S)S
.end method

.method public static native ET9KUTIL_BuildHangulSingleConsonants(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S
.end method

.method public static native ET9KUTIL_GetHangulSingleConsonants(B[SS[S)S
.end method

.method public static native ET9LockWord(Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;)S
.end method

.method public static native ET9MakeLdbList()S
.end method

.method public static native ET9SetCapsGesture()S
.end method

.method public static native ET9SetCapsLock()S
.end method

.method public static native ET9SetDownshiftAllLDBWords()S
.end method

.method public static native ET9SetDownshiftDefault()S
.end method

.method public static native ET9SetFreeDoubleLetters(B)S
.end method

.method public static native ET9SetFreeSymbols(B)S
.end method

.method public static native ET9SetKeyboardDatabase(Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;)S
.end method

.method public static native ET9SetNextLocking()S
.end method

.method public static native ET9SetShift()S
.end method

.method public static native ET9SetShiftGesture()S
.end method

.method public static native ET9SetUnShift()S
.end method

.method public static native ET9SmartTouchGetDataSize()S
.end method

.method public static native ET9SmartTouchInit([BI)S
.end method

.method public static native ET9UpdateLdbList()S
.end method

.method public static native ET9WordSymbInit(B)S
.end method

.method public static native ET9_K_Hangul2Jamo([CSLcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;Z)S
.end method

.method public static native GetCurrentTimeMillis()J
.end method
