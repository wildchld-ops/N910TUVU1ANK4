.class Lcom/android/mms/ui/EmoticonContainer$5;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$5;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$5;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$5;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v0, v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1102(Lcom/android/mms/ui/EmoticonContainer;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$5;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$5;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method
