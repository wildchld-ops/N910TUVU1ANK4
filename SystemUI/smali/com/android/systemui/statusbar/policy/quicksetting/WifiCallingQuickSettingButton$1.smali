.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneStateListener/onCallStateChanged(): state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1
.end method
