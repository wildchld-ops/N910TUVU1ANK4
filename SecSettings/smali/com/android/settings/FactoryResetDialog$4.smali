.class Lcom/android/settings/FactoryResetDialog$4;
.super Ljava/lang/Object;
.source "FactoryResetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FactoryResetDialog;->onCreateDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FactoryResetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/FactoryResetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FactoryResetDialog$4;->this$0:Lcom/android/settings/FactoryResetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Settings"

    const-string v2, "PositiveButton : onClick "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_request_for"

    const-string v2, "resetrequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "retry_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/FactoryResetDialog$4;->this$0:Lcom/android/settings/FactoryResetDialog;

    invoke-virtual {v1}, Lcom/android/settings/FactoryResetDialog;->popupDestroy()V

    iget-object v1, p0, Lcom/android/settings/FactoryResetDialog$4;->this$0:Lcom/android/settings/FactoryResetDialog;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
