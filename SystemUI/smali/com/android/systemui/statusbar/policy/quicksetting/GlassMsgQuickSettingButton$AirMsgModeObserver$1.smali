.class Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver$1;
.super Ljava/lang/Object;
.source "GlassMsgQuickSettingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver$1;->this$1:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver$1;->this$1:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->changeStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V

    return-void
.end method
