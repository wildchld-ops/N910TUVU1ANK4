.class public interface abstract Lcom/diotek/ime/framework/input/InputModule;
.super Ljava/lang/Object;
.source "InputModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/input/InputModule$Timer;
    }
.end annotation


# virtual methods
.method public abstract VOHWRInitByCursorMove(I)V
.end method

.method public abstract VOHWRSetChangeMode(II)V
.end method

.method public abstract VOHWRSetInsertMode(II)V
.end method

.method public abstract buildSuggestions()V
.end method

.method public abstract cancelPreviewTrace()V
.end method

.method public abstract cancelUpdateSequenceAndSuggestionDelayForRecapture()V
.end method

.method public abstract cancelUpdateSuggestionDelay()V
.end method

.method public abstract clearAction()V
.end method

.method public abstract closing()V
.end method

.method public abstract commitTextAndInitComposing(Ljava/lang/CharSequence;)V
.end method

.method public abstract endMultitapTimer()V
.end method

.method public abstract finishAndInitByCursorMove()V
.end method

.method public abstract finishComposing(Z)V
.end method

.method public abstract getDeleteCount()I
.end method

.method public abstract getHwrCandidateStatus()I
.end method

.method public abstract getIndexOfInputBuffer()I
.end method

.method public abstract getPosNextText()I
.end method

.method public abstract getSelectedWord()Ljava/lang/String;
.end method

.method public abstract getStateCandidate()I
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

.method public abstract hasCurrentSequence()Z
.end method

.method public abstract hasKeyATInCurrentSequence()Z
.end method

.method public abstract hasWWWdotInCurrentSequence()Z
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

.method public abstract initComposingBuffer()V
.end method

.method public abstract initDeleteCount()V
.end method

.method public abstract initInputEngineAndComposing(IIII)V
.end method

.method public abstract initialize()V
.end method

.method public abstract inputDisplayedRecognitionString()V
.end method

.method public abstract isEmojiLMLoaded()Z
.end method

.method public abstract isLastActionIsTraceOrPick()Z
.end method

.method public abstract isMultiTapRnunnig()Z
.end method

.method public abstract isPredictionWord()Z
.end method

.method public abstract isSwiftPhonepadInput()Z
.end method

.method public abstract onCharacterKey(I[I)V
.end method

.method public abstract onCharacterKeyForHwKeyboard(I[I)V
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

.method public abstract onText(Ljava/lang/CharSequence;)V
.end method

.method public abstract pickSuggestionManually(ILjava/lang/CharSequence;)V
.end method

.method public abstract postUpdateSequenceAndSuggestionDelayForRecapture(I)V
.end method

.method public abstract predictionWord()Z
.end method

.method public abstract predictionWordStartInputViewContinue()Z
.end method

.method public abstract previewTrace(IZ)V
.end method

.method public abstract processRecaptureXT9()V
.end method

.method public abstract release()V
.end method

.method public abstract removeTerm(I)V
.end method

.method public abstract resetPredictionWord()V
.end method

.method public abstract setAddStrokeCallBackOnHWREngine()V
.end method

.method public abstract setAutoSpaceOn(Z)V
.end method

.method public abstract setEmojiPredictionEnabled(Z)V
.end method

.method public abstract setHwrCandidateStatus(IZ)V
.end method

.method public abstract setParameterForCapsLockState(Z)V
.end method

.method public abstract setPredictionWord(Z)V
.end method

.method public abstract setVietnameseTelexComposing()V
.end method

.method public abstract toUpperCaseOfTurkish(I)I
.end method

.method public abstract trimSwiftkeyMemory()V
.end method

.method public abstract updateCandidates()V
.end method

.method public abstract updatePredictionSettingAndEngine()V
.end method

.method public abstract updateSuggestionDelay()V
.end method

.method public abstract updateSuggestionForSwiftKey()V
.end method

.method public abstract updateVOHWRSuggestion()V
.end method
