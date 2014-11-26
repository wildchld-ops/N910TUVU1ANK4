.class public interface abstract Lcom/diotek/ime/framework/input/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# static fields
.field public static final INDEX_COMPLETE_HWR_MODULE:I = 0x4

.field public static final INDEX_ENGINE_DHWR:I = 0x2

.field public static final INDEX_ENGINE_DHWR_KOR:I = 0x3

.field public static final INDEX_ENGINE_DWP:I = 0x1

.field public static final INDEX_ENGINE_MAX:I = 0x8

.field public static final INDEX_ENGINE_SWIFTKEY:I = 0x4

.field public static final INDEX_ENGINE_VOHWR:I = 0x5

.field public static final INDEX_ENGINE_XT9:I = 0x0

.field public static final INDEX_ENGINE_XT9_94:I = 0x6

.field public static final INDEX_HWR_MODULE:I = 0x3

.field public static final INDEX_MODULE_MAX:I = 0x1c

.field public static final INDEX_PHONEPAD_CHINESE_MODULE:I = 0x8

.field public static final INDEX_PHONEPAD_KOREAN_MODULE:I = 0x6

.field public static final INDEX_PHONEPAD_LATIN_MODULE:I = 0x7

.field public static final INDEX_QWERTY_CHINESE_MODULE:I = 0x2

.field public static final INDEX_QWERTY_INDIAN_MODULE:I = 0x9

.field public static final INDEX_QWERTY_KOREAN_MODULE:I = 0x1

.field public static final INDEX_QWERTY_LATIN_MODULE:I = 0x0

.field public static final INDEX_QWERTY_SEA_MODULE:I = 0x5

.field public static final INDEX_SWIFTKEY_HW_PHONEPAD_KOREAN_MODULE:I = 0x12

.field public static final INDEX_SWIFTKEY_HW_PHONEPAD_LATIN_MODULE:I = 0x11

.field public static final INDEX_SWIFTKEY_PHONEPAD_CHINESE_MODULE:I = 0xf

.field public static final INDEX_SWIFTKEY_PHONEPAD_JAPANESE_MODULE:I = 0x1b

.field public static final INDEX_SWIFTKEY_PHONEPAD_KOREAN_MODULE:I = 0xe

.field public static final INDEX_SWIFTKEY_PHONEPAD_LATIN_MODULE:I = 0xd

.field public static final INDEX_SWIFTKEY_QWERTY_CHINESE_MODULE:I = 0xc

.field public static final INDEX_SWIFTKEY_QWERTY_INDIAN_MODULE:I = 0x10

.field public static final INDEX_SWIFTKEY_QWERTY_JAPANESE_MODULE:I = 0x1a

.field public static final INDEX_SWIFTKEY_QWERTY_KOREAN_MODULE:I = 0xb

.field public static final INDEX_SWIFTKEY_QWERTY_LATIN_MODULE:I = 0xa

.field public static final INDEX_XT9_94_PHONEPAD_CHINESE_MODULE:I = 0x18

.field public static final INDEX_XT9_94_PHONEPAD_KOREAN_MODULE:I = 0x17

.field public static final INDEX_XT9_94_PHONEPAD_LATIN_MODULE:I = 0x16

.field public static final INDEX_XT9_94_QWERTY_CHINESE_MODULE:I = 0x15

.field public static final INDEX_XT9_94_QWERTY_INDIAN_MODULE:I = 0x19

.field public static final INDEX_XT9_94_QWERTY_KOREAN_MODULE:I = 0x14

.field public static final INDEX_XT9_94_QWERTY_LATIN_MODULE:I = 0x13


# virtual methods
.method public abstract VOHWRInitByCursorMove(I)V
.end method

.method public abstract VOHWRSetChangeMode(II)V
.end method

.method public abstract VOHWRSetInsertMode(II)V
.end method

.method public abstract backupFullText()V
.end method

.method public abstract buildSuggestions()V
.end method

.method public abstract cancelPreviewTrace()V
.end method

.method public abstract cancelUpdateSuggestionDelay()V
.end method

.method public abstract changeToEmoticonMode()V
.end method

.method public abstract changeToFloatingKeyboardMode()V
.end method

.method public abstract changeToFullWidthSwitchMode(Z)V
.end method

.method public abstract changeToHwrMode()V
.end method

.method public abstract changeToKeyboardMode()V
.end method

.method public abstract changeToNormalKeyboardMode()V
.end method

.method public abstract changeToSplitKeyboardMode()V
.end method

.method public abstract clearAction()V
.end method

.method public abstract clearBackupFullText()V
.end method

.method public abstract closeInputModule()V
.end method

.method public abstract commitAndResetForHwr()V
.end method

.method public abstract deleteAllTextInEditor()V
.end method

.method public abstract endMultitapTimer()V
.end method

.method public abstract finishAndInitByCursorMove()V
.end method

.method public abstract finishComposing(Z)V
.end method

.method public abstract getAcuteAccentPressed()Z
.end method

.method public abstract getAcuteAccentSplitState()Z
.end method

.method public abstract getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;
.end method

.method public abstract getChineseSpellText()Ljava/lang/CharSequence;
.end method

.method public abstract getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getContextAwareUniqueID()Ljava/lang/String;
.end method

.method public abstract getDeleteCount()I
.end method

.method public abstract getHwrCandidateStatus()I
.end method

.method public abstract getIndexOfInputBuffer()I
.end method

.method public abstract getKeyPositionByTap(II)I
.end method

.method public abstract getKeyPositions([Landroid/graphics/Rect;)I
.end method

.method public abstract getPosNextText()I
.end method

.method public abstract getPreviousTextLength()I
.end method

.method public abstract getSelectedWord()Ljava/lang/String;
.end method

.method public abstract getStateCandidate()I
.end method

.method public abstract getSuggestionActiveIndex()I
.end method

.method public abstract getWordToAddMyWordList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXt9Version()I
.end method

.method public abstract handleRangeChange(ZZ)V
.end method

.method public abstract hasCurrentSequence()Z
.end method

.method public abstract hasKeyATInCurrentSequence()Z
.end method

.method public abstract hasWWWdotInCurrentSequence()Z
.end method

.method public abstract initAndClearComposingText()V
.end method

.method public abstract initCandidates(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initComposingText()V
.end method

.method public abstract initDeleteCount()V
.end method

.method public abstract initHwrPanel(Landroid/widget/FrameLayout;I)V
.end method

.method public abstract initInputEngineAndComposing(IIII)V
.end method

.method public abstract initialize()V
.end method

.method public abstract isAcuteAccentState()Z
.end method

.method public abstract isAvailableLanguage(I)Z
.end method

.method public abstract isEmojiLMLoaded()Z
.end method

.method public abstract isFullWidthMode()Z
.end method

.method public abstract isHWRAvailable()Z
.end method

.method public abstract isHandWritingHasBoonUsed()Z
.end method

.method public abstract isInstallableLanguage(I)Z
.end method

.method public abstract isLastActionIsTraceOrPick()Z
.end method

.method public abstract isMultiTapRnunnig()Z
.end method

.method public abstract isProdictionWord()Z
.end method

.method public abstract isSelectedLanguage(Lcom/diotek/ime/framework/common/Language;)Z
.end method

.method public abstract isSwiftPhonepadInput()Z
.end method

.method public abstract isUsingDWPEngine()Z
.end method

.method public abstract learnSequence()V
.end method

.method public abstract learnTempSuggestion(Ljava/lang/String;)V
.end method

.method public abstract onChangeHwkeyboardLanguage(Lcom/diotek/ime/framework/common/Language;)V
.end method

.method public abstract onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
.end method

.method public abstract onHwrPanelLongPressed(ILjava/lang/String;)V
.end method

.method public abstract onHwrTouchCancel(IIJ)Z
.end method

.method public abstract onHwrTouchDown(IIJ)Z
.end method

.method public abstract onHwrTouchMove(IIJ)Z
.end method

.method public abstract onHwrTouchUp(IIJ)Z
.end method

.method public abstract onKey(I[I)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLongPressHwKey(I)Z
.end method

.method public abstract onPress(I)V
.end method

.method public abstract onRelease(I)V
.end method

.method public abstract onText(Ljava/lang/CharSequence;)V
.end method

.method public abstract pickSuggestionManually(ILjava/lang/CharSequence;)V
.end method

.method public abstract predictionWord()Z
.end method

.method public abstract predictionWordStartInputViewContinue()Z
.end method

.method public abstract previewTrace(IZ)V
.end method

.method public abstract recaptureWordXT9()V
.end method

.method public abstract release()V
.end method

.method public abstract removeTerm(I)V
.end method

.method public abstract resetHandWritingHasBoonUsed()V
.end method

.method public abstract resetProdictionWord()V
.end method

.method public abstract resetTextFieldState()V
.end method

.method public abstract sendDownUpKeyEvent(II)V
.end method

.method public abstract setAccentChar(I)V
.end method

.method public abstract setAcuteAccentPressed(Z)V
.end method

.method public abstract setAcuteAccentSplitState(Z)V
.end method

.method public abstract setAutoSpaceOn(Z)V
.end method

.method public abstract setAvailableHWRLanguage()V
.end method

.method public abstract setChinesePhoneticIndex(I)V
.end method

.method public abstract setContextAwareUniqueID(Ljava/lang/String;)V
.end method

.method public abstract setEmojiPredictionEnabled(Z)V
.end method

.method public abstract setFieldSpecificType(I)V
.end method

.method public abstract setFullWidthMode(Z)V
.end method

.method public abstract setHwrCandidateStatus(IZ)V
.end method

.method public abstract setHwrPanelRect(IIII)V
.end method

.method public abstract setIsPrivateImeOptionsCSC(Z)V
.end method

.method public abstract setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
.end method

.method public abstract setKeyboardSize(II)V
.end method

.method public abstract setParameterForCapsLockState(Z)V
.end method

.method public abstract setPointingKeyboard()V
.end method

.method public abstract setProdictionWord(Z)V
.end method

.method public abstract setSideSyncInputModule(I)V
.end method

.method public abstract setSuggestionActiveIndex(I)V
.end method

.method public abstract setTraceStatus()V
.end method

.method public abstract setVietnameseTelexComposing()V
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft()V
.end method

.method public abstract swipeRight()V
.end method

.method public abstract swipeUp()V
.end method

.method public abstract trimSwiftkeyMemory()V
.end method

.method public abstract updateAcuteAccentState(Z)V
.end method

.method public abstract updateCandidates()V
.end method

.method public abstract updateHwPhonepadInputModule()V
.end method

.method public abstract updateInputModule()V
.end method

.method public abstract updatePredictionSettingAndEngine()V
.end method

.method public abstract updateShiftState()V
.end method

.method public abstract updateSuggestionForSwiftKey()V
.end method

.method public abstract updateVOHWRSuggestion()V
.end method

.method public abstract updateViewStatus()V
.end method

.method public abstract writeDBdataToFileOnFinishInput()V
.end method
