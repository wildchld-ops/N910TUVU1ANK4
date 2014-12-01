.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/DropActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropAction(Landroid/view/DragEvent;)V
    .locals 14

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v11, 0x7

    if-eq v5, v11, :cond_0

    const/16 v11, 0x8

    if-eq v5, v11, :cond_0

    const/4 v11, 0x2

    if-ne v5, v11, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v11, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getNearestKey(II)Lcom/diotek/ime/framework/view/Keyboard$Key;
    invoke-static {v11, v12, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;II)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    const-string v12, "text/plain"

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    const-string v12, "text/html"

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/high16 v0, 0x40000

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/high16 v12, 0x40000

    if-gt v11, v12, :cond_5

    :cond_4
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_6

    :cond_5
    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/high16 v11, 0x40000

    if-gt v10, v11, :cond_8

    if-nez v10, :cond_a

    :cond_8
    const/4 v4, 0x1

    :cond_9
    :goto_3
    if-eqz v9, :cond_1

    if-nez v4, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v8, :cond_1

    iget-object v11, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Character;->isDigit(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v12, -0x1

    iput v12, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSelectedNumber:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, v11, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShortcutsController:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    invoke-virtual {v11, v9, v8}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->setShortCutPhrase(Ljava/lang/String;Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v9}, Lcom/diotek/ime/framework/util/UnicodeUtils;->containObjUnicode(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3
.end method
