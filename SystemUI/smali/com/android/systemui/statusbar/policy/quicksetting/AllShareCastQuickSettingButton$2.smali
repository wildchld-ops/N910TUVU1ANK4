.class Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$2;
.super Landroid/database/ContentObserver;
.source "AllShareCastQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->update()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V

    return-void
.end method
