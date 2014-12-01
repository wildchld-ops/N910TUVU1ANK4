.class Lcom/android/incallui/CallCardVoiceFragment$2;
.super Ljava/lang/Object;
.source "CallCardVoiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardVoiceFragment;->showVoLTESettingErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVoiceFragment;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVoiceFragment;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volteSettingErrorShowNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/CallCardVoiceFragment;->access$100(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
