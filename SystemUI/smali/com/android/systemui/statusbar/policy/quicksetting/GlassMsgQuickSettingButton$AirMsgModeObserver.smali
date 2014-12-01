.class Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;
.super Landroid/database/ContentObserver;
.source "GlassMsgQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMsgModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
