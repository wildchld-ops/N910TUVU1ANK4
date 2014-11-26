.class Lcom/android/mms/settings/FreeMessageSettings$4;
.super Ljava/lang/Object;
.source "FreeMessageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/FreeMessageSettings;->makeCannotChangeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/FreeMessageSettings;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/FreeMessageSettings$4;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iput-boolean p2, p0, Lcom/android/mms/settings/FreeMessageSettings$4;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings$4;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # getter for: Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/mms/settings/FreeMessageSettings;->access$500(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/settings/FreeMessageSettings$4;->val$isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
