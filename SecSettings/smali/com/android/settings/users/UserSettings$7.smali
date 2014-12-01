.class Lcom/android/settings/users/UserSettings$7;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$7;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/users/UserSettings$7;->val$userType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    iget v1, p0, Lcom/android/settings/users/UserSettings$7;->val$userType:I

    # invokes: Lcom/android/settings/users/UserSettings;->addUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z
    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$1800(Lcom/android/settings/users/UserSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/users/UserSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1900(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$7;->this$0:Lcom/android/settings/users/UserSettings;

    iget v1, p0, Lcom/android/settings/users/UserSettings$7;->val$userType:I

    # invokes: Lcom/android/settings/users/UserSettings;->addUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0
.end method
