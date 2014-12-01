.class public Lcom/android/mms/ui/ComposeMessageFragment$ChangeInputModeSettingsListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeInputModeSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChangeInputModeSettingsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChangeInputModeSettingsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "ChangeInputModeSettingsListener onClick Fragment was detached"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChangeInputModeSettingsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChangeInputModeSettingsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v3, Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
