.class public Lcom/android/mms/ui/ComposeMessageActivityNoLockScreen;
.super Lcom/android/mms/ui/ConversationComposer;
.source "ComposeMessageActivityNoLockScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
