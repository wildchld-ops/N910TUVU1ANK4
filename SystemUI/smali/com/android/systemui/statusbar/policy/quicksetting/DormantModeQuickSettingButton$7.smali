.class Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;
.super Ljava/lang/Object;
.source "DormantModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "STATUSBAR-DormantModeController"

    const-string v1, "AlertDialog onDismiss()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$7;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
