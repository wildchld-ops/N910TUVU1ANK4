.class Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
