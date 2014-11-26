.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
    .param p2    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    return-void
.end method


# virtual methods
.method public onRefreshScreenDone()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$502(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v1, "RefreshDoneListener done!"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    return-void
.end method
