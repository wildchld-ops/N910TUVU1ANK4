.class Lcom/android/incallui/CallCardFragment$6;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->onWeakWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/widget/Checkable;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$6;->val$dialogCheckbox:Landroid/widget/Checkable;

    iput-object p3, p0, Lcom/android/incallui/CallCardFragment$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$6;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "weakWifiShowNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
