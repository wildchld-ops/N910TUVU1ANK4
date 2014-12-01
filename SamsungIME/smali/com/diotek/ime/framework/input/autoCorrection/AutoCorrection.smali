.class public final Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;
.super Ljava/lang/Object;
.source "AutoCorrection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAutoCorrection(IILandroid/view/inputmethod/InputConnection;)Z
    .locals 6

    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v4, v5

    add-int v1, v0, p1

    if-gt v0, v1, :cond_0

    move v3, v0

    sub-int/2addr v3, p0

    invoke-interface {p2, v3, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 v4, 0x1

    return v4

    :cond_0
    invoke-interface {p2, p0, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public static doAutoCorrection(Ljava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)Z
    .locals 6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v4, v5

    add-int v1, v0, p2

    if-gt v0, v1, :cond_3

    move v3, v0

    sub-int/2addr v3, p1

    invoke-interface {p3, v3, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-interface {p3, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    :cond_4
    invoke-interface {p3, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1
.end method

.method public static doAutoCorrection(Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/view/inputmethod/InputConnection;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v4, p2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    sub-int/2addr v4, v5

    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    invoke-direct {v0, v4, p1, p0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {p5, v0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    const/4 v3, 0x1

    :cond_2
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    move v5, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p3, :cond_5

    if-eqz p4, :cond_0

    :cond_5
    move v4, p2

    sub-int/2addr v4, p3

    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    invoke-direct {v0, v4, p1, p0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {p5, v0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    invoke-interface {p5, p3, p4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public static doAutoCorrectionByTrace(Ljava/lang/CharSequence;Landroid/view/inputmethod/InputConnection;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "I"

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return v2

    :cond_0
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
