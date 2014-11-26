.class public abstract Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.super Ljava/lang/Object;
.source "AbstractInputEngine.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/InputEngine;


# instance fields
.field protected final DEBUG:Z

.field protected mActiveIndex:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field protected mSuggestionCount:I

.field protected mXt9AutoReplacementCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->DEBUG:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mXt9AutoReplacementCondition:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_2

    const-string v0, "SamsungIME"

    const-string v1, "Could not get InputManager instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_3

    const-string v0, "SamsungIME"

    const-string v1, "Could not get Reopository instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "Could not get ShiftController instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public CommitAndInitText(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public DLMAddWord([CS)S
    .locals 1
    .param p1    # [C
    .param p2    # S

    const/4 v0, 0x0

    return v0
.end method

.method public SetChangeMode(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public SetInsertMode(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public addTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public appendText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;

    return-void
.end method

.method public breakContext()V
    .locals 0

    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelTrace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkChineseSequence()V
    .locals 0

    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 0
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # [I
    .param p3    # [I

    return-void
.end method

.method public checkJapaneseSequence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearContext()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearInkContext()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public convetCangjieSpell()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteLdb(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public deleteWordFromLDB([CS)S
    .locals 1
    .param p1    # [C
    .param p2    # S

    const/4 v0, 0x0

    return v0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # S
    .param p3    # Z

    const/4 v0, -0x1

    return v0
.end method

.method public doResetMultitap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findWordFromDLM([CS)Z
    .locals 1
    .param p1    # [C
    .param p2    # S

    const/4 v0, 0x0

    return v0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public freeResources()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveIndex([I)I
    .locals 2
    .param p1    # [I

    const/4 v1, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v1

    return v1
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getChar(C)I
    .locals 1
    .param p1    # C

    const/4 v0, 0x0

    return v0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I

    const/4 v0, 0x0

    return v0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1    # Ljava/lang/StringBuilder;

    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    return v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getInputLanguageId()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    const/16 v0, -0x12c

    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 1
    .param p1    # [Landroid/graphics/Rect;

    const/4 v0, -0x1

    return v0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 1
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestionCount([I)I
    .locals 2
    .param p1    # [I

    const/4 v1, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    aput v0, p1, v1

    return v1
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/StringBuilder;

    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    return v0
.end method

.method public getXt9Version()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXt9Version([SS[S)S
    .locals 1
    .param p1    # [S
    .param p2    # S
    .param p3    # [S

    const/4 v0, 0x0

    return v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasInputSequence()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public init()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
    .param p2    # I

    return-void
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public inputKey(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v0, 0x0

    return v0
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    return v0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v0, -0x1

    return v0
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method

.method public inputStrokeData(III)Z
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAcceptBeforeStoredTrace([Z[Z)S
    .locals 1
    .param p1    # [Z
    .param p2    # [Z

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 1
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [Z

    const/4 v0, 0x0

    return v0
.end method

.method public isEmojiLMLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isLanguageForToUseBestWord()Z
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateImeOptionsCSC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public ldbUpdate()V
    .locals 0

    return-void
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public moveTrace(FFJ)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # J

    return-void
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public processStoredTrace(B)S
    .locals 1
    .param p1    # B

    const/4 v0, 0x0

    return v0
.end method

.method public processTrace([Landroid/graphics/PointF;I[JBZ)S
    .locals 1
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [J
    .param p4    # B
    .param p5    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public recognize(IZ)I
    .locals 1
    .param p1    # I
    .param p2    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public reflashSelectList()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 1
    .param p1    # Z
    .param p2    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseTrace(FFJ)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # J

    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 0

    return-void
.end method

.method public removeTerm(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v0, 0x0

    return v0
.end method

.method public resetDLMData()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetTextFieldState()V
    .locals 0

    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public setActiveIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    return-void
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 0

    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 0
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    return-void
.end method

.method public setKeyboardOffset(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 0
    .param p1    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    return-void
.end method

.method public setOptionsByState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setUsingLanguage(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public startTrace(FFJ)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # J

    return-void
.end method

.method public trimSwiftkeyMemory()V
    .locals 0

    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public updateEngine()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p2    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public updateSelectList()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateShiftState()V
    .locals 0

    return-void
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 0

    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 1
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    const/4 v0, 0x0

    return v0
.end method
