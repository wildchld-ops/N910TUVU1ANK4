.class public interface abstract Lcom/diotek/ime/framework/view/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# virtual methods
.method public abstract changeInputMode(I)V
.end method

.method public abstract changeValidSymbolsPage(I)V
.end method

.method public abstract checkEnableOneHandKeypad()V
.end method

.method public abstract closeEmoticonView()V
.end method

.method public abstract closeView()V
.end method

.method public abstract createPopupCandidateView()V
.end method

.method public abstract deallocateMem()V
.end method

.method public abstract dismissAllDialog()V
.end method

.method public abstract dismissPopupCandidate()V
.end method

.method public abstract dismissPopupKeyboard()V
.end method

.method public abstract dismissPopupKeyboardWithoutFloatingAndSplit()V
.end method

.method public abstract getCandiateView(Z)Landroid/view/View;
.end method

.method public abstract getCandidatesDisplayedCount()I
.end method

.method public abstract getChineseLanguageCurrentView()Landroid/view/View;
.end method

.method public abstract getCurrentThaiVowelPageNum()I
.end method

.method public abstract getDefaultCandidateList()Ljava/util/ArrayList;
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

.method public abstract getEmoticonViewHeight()I
.end method

.method public abstract getFullScreenHwrKeyboardView()Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;
.end method

.method public abstract getHWRKeyboardView()Landroid/widget/FrameLayout;
.end method

.method public abstract getHwPhonepadEnKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method public abstract getHwPhonepadKrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method public abstract getInputView(Z)Landroid/view/View;
.end method

.method public abstract getKeyboardKeyList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelFromCurrentView(I)Ljava/lang/CharSequence;
.end method

.method public abstract getLengthOfSpellText()I
.end method

.method public abstract getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;
.end method

.method public abstract getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;
.end method

.method public abstract getSuggestions()Ljava/util/ArrayList;
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

.method public abstract hideFullscreenHwrPanel()V
.end method

.method public abstract initHWR()V
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidateKey(I)V
.end method

.method public abstract isAccessibilityEnabled()Z
.end method

.method public abstract isDiscoverabilityShown()Z
.end method

.method public abstract isEnableOneHandKeypad()Z
.end method

.method public abstract isInRepeatKey()Z
.end method

.method public abstract isMiniKeyboardOnScreen()Z
.end method

.method public abstract isMiniKeyboardView()Z
.end method

.method public abstract isOneHandKeypadRightSet()Z
.end method

.method public abstract isPopupWindowShown()Z
.end method

.method public abstract isSpellViewShown()Z
.end method

.method public abstract isSymbolPopupKeyboardOnScreen()Z
.end method

.method public abstract isTalkbackEnabled()Z
.end method

.method public abstract isTouchExplorationEnabled()Z
.end method

.method public abstract isUseGlobalKey()Z
.end method

.method public abstract nextSymbolsPage()V
.end method

.method public abstract onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
.end method

.method public abstract onMagnifyStateChanged(Z)V
.end method

.method public abstract prevSymbolsPage()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseAllKeyPressed()V
.end method

.method public abstract releaseCandidateView()V
.end method

.method public abstract resetMultitap()V
.end method

.method public abstract resetSymbolsPage()V
.end method

.method public abstract sendTalkbackDescription(Ljava/lang/String;)V
.end method

.method public abstract sendTouchEvent(Landroid/view/MotionEvent;Z)V
.end method

.method public abstract setCurrentThaiVowelPageNum(I)V
.end method

.method public abstract setEmoticonCategory(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setInputView(Landroid/view/View;)V
.end method

.method public abstract setOneHandBgDim(Z)V
.end method

.method public abstract setOneHandLayoutShown()V
.end method

.method public abstract setOneHandLayoutShownWithOption(I)V
.end method

.method public abstract setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setSecondarySymbolStatus(I)V
.end method

.method public abstract setSuggestions(Ljava/util/ArrayList;)V
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

.method public abstract showDiscoverability(ILandroid/view/View;)V
.end method

.method public abstract showEmptyShortcutsGuideDialog()V
.end method

.method public abstract showFullscreenHwrPanel()V
.end method

.method public abstract showGestureGuideDialog()V
.end method

.method public abstract showHalfFullWidthSwitchDialog()V
.end method

.method public abstract showLanguageSelectDialog()V
.end method

.method public abstract showModeChangePopupKeyboard()V
.end method

.method public abstract showOneHandedGuideDialog()V
.end method

.method public abstract showPenDetectionGuideDialog()V
.end method

.method public abstract showPinchZoomGuideDialog()V
.end method

.method public abstract showSwiftkeyGuideDialog()V
.end method

.method public abstract showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V
.end method

.method public abstract showSymbolPopupKeyboard()V
.end method

.method public abstract showTipsDialogByIndex(I)V
.end method

.method public abstract showTipsHwrInstallGuideDialog()V
.end method

.method public abstract showTipsOneHandedGuideDialog()V
.end method

.method public abstract showTipsSwiftkeyGuideDialog()V
.end method

.method public abstract showTraceGuideDialog()V
.end method

.method public abstract showXt9PersonalizerAttentionDialog()V
.end method

.method public abstract showXt9_9RemoveTermDialog(Ljava/lang/String;I)V
.end method

.method public abstract update()V
.end method

.method public abstract updateIndianLang()V
.end method

.method public abstract updateIndianVowelRow()V
.end method

.method public abstract updateKeyboard()V
.end method

.method public abstract updatePhoneticSpell(Ljava/util/ArrayList;)V
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

.method public abstract updatePopupKeyboard()V
.end method

.method public abstract updateSettingValues()V
.end method

.method public abstract updateShiftState()V
.end method

.method public abstract updateSpace()V
.end method

.method public abstract updateSpellView(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract updateThaiKeyboard(I)V
.end method

.method public abstract useAnimationOfExpandCandidate()Z
.end method

.method public abstract useAnimationOfMiniKeyboard()Z
.end method
